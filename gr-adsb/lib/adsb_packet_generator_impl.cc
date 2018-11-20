/* -*- c++ -*- */
/* 
 * Copyright 2018 Savio Sciancalepore, CRI-Lab.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "adsb_packet_generator_impl.h"

//for hexadecimal conversion
constexpr char hexmap[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                           '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

namespace gr {
  namespace adsb {

    adsb_packet_generator::sptr
    adsb_packet_generator::make(char* file, float amp, float delay)
    {
      return gnuradio::get_initial_sptr
        (new adsb_packet_generator_impl(file, amp, delay));
    }

    /*
     * The private constructor
     */
    adsb_packet_generator_impl::adsb_packet_generator_impl(char* file, float amp, float delay)
      : gr::sync_block("adsb_packet_generator",
              gr::io_signature::make(0, 0, 0),
              gr::io_signature::make(1, 1, sizeof(float))),
              AMP(amp), DELAY(delay), preamble_bits{amp, 0, amp, 0, 0, 0, 0, amp, 0, amp, 0, 0, 0, 0, 0, 0},
              master_key{0x88, 0x08, 0x21, 0x26, 0xb1, 0x08, 0xc1, 0xc1, 0x01, 0xd4, 0x58, 0xc3, 0xa8,0x25, 0x63, 0x36}, //the default master key
              addr{128, 7, 224} //the default address of the sender
    {
	last_packet_time=0;

        NUM_SIG_PKTS = ceil((float(SIGNATURE_LEN)*8)/AVL_PAYLOAD_BITS);
        NUM_KEY_PKTS = ceil((float(KEY_LEN)*8/AVL_PAYLOAD_BITS));
        NUM_TESLA_PKTS = NUM_SIG_PKTS + NUM_KEY_PKTS;

        TOT_PKTS_PER_ROUND = NUM_TESLA_PKTS + NUM_MSG_PKT_IN_ROUND;

        std::string hashed = hexStr(master_key, sizeof (master_key) / sizeof (master_key[0]));

        // H^n (M_k) is the key chain commit
        for (int i=0; i<MAX_HASH_NUMBER; i++){
            hashed = hashed.substr(0, 2*KEY_LEN);

            hashed = sha256(hashed);

            //save the unsigned char version of each string in the keys table
            std::vector<char> temp_vect;
            temp_vect = HexToBytes(hashed);

            for (int j=0; j<KEY_LEN; j++){
                Keys_Table[MAX_HASH_NUMBER-1-i][j] = (unsigned char)(temp_vect[j]); //the first key to be used is the one hashed for more times
            }

        }

        //from hex string to unsigned char*
        std::vector<char> temp_vect;
        temp_vect = HexToBytes(hashed);

        for (int j=0; j<KEY_LEN; j++){
           key_chain_commit[j] = (unsigned char)(temp_vect[j]);
        }

        myfile.open(file);

        //set counters to zero
        count=0;
        count_pkts_this_slot = 0;
        adsb_info_message_count = 0;

        //reset the signature table
        for (int k=0; k<NUM_MSG_PKT_IN_ROUND; k++){
            for(int j=0; j<ADSB_MESSAGE_SIZE;j++){
                Messages_table[k][j] = 0;
            }
        }

        time_t t;
        time(&t);
        time(&last_packet_time);
	
    }

    /*
     * Our virtual destructor.
     */
    adsb_packet_generator_impl::~adsb_packet_generator_impl()
    {
	myfile.close();
    }

    double adsb_packet_generator_impl::difftime(clock_t t1, clock_t t2){
        double t1_d = (double) t1;
        double t2_d = (double) t2;

        return (double) (t1-t2)/CLOCKS_PER_SEC*1000;

    }

     void adsb_packet_generator_impl::sendBits(int first_byte, unsigned char * data, int byte_size, float* out){
     // function that transform a sequence of bytes in a PPM modulated waveform

         for (int j=0;j<byte_size;j++ ) {
             for (int b = 0; b < 8; b++) {
                 int position=2*(first_byte*8 + 8*j+b);
                 int result = (data[j] >> (7-b)) & 1U; // Bit by bit
                 if (result == 0) {
                     out[position] = 0.0;
                     out[position+1] = AMP;
                 } else if (result == 1) {
                     out[position] = AMP;
                     out[position+1] = 0.0;
                 }
             }
         }
    }

    string adsb_packet_generator_impl::sha256(const string str){
    //function that performs the sha256 hash operation

        unsigned char hash[SHA256_DIGEST_LENGTH];
        SHA256_CTX sha256;
        SHA256_Init(&sha256);
        SHA256_Update(&sha256, str.c_str(), str.size());
        SHA256_Final(hash, &sha256);
        stringstream ss;
        //std::cout<<"Digest Len: "<<SHA256_DIGEST_LENGTH<<std::endl;
        for(int i = 0; i < SHA256_DIGEST_LENGTH; i++)
        {
            ss << hex << setw(2) << setfill('0') << (int)hash[i];
        }
        return ss.str();
    }

    std::string adsb_packet_generator_impl::hexStr(unsigned char* data, int len)
    {

        std::string s(len * 2, ' ');
          for (int i = 0; i < len; ++i) {
            s[2 * i]     = hexmap[(data[i] & 0xF0) >> 4];
            s[2 * i + 1] = hexmap[data[i] & 0x0F];
          }
          return s;
    }

    string adsb_packet_generator_impl::hmac_sha256(unsigned char* str, int str_len, unsigned char* key, int key_size){

        unsigned int len = EVP_MAX_MD_SIZE;
        unsigned char result[EVP_MAX_MD_SIZE];

        HMAC_CTX* ctx = HMAC_CTX_new();

        HMAC_Init_ex(ctx, key, key_size, EVP_sha256(), NULL);
        HMAC_Update(ctx, (str), str_len);
        HMAC_Final(ctx, result, &len);

        HMAC_CTX_free(ctx);

        stringstream ss;
        for(int i = 0; i < EVP_MAX_MD_SIZE; i++)
        {
            ss << hex << (int)result[i];
        }
        return ss.str();

    }

    std::vector<char> adsb_packet_generator_impl::HexToBytes(const std::string& hex) {
    //function that transform a hex string into its decimal representation

      std::vector<char> bytes;

      for (unsigned int i = 0; i < hex.length(); i += 2) {
        std::string byteString = hex.substr(i, 2);
        char byte = (char) strtol(byteString.c_str(), NULL, 16);
        bytes.push_back(byte);
      }

      return bytes;
    }

    //generate a bytewise lookup CRC table
    void adsb_packet_generator_impl::generate_crc_table(void){
        unsigned int crc = 0;
        for(int n=0; n<256; n++) {
            crc = n<<16;
            for(int k=0; k<8; k++) {
                if(crc & 0x800000) {
                    crc = ((crc<<1) ^ POLY) & 0xFFFFFF;
                } else {
                    crc = (crc<<1) & 0xFFFFFF;
                }
            }
            crc_table[n] = crc & 0xFFFFFF;
        }
    }

    //Perform a bytewise CRC check
    unsigned int adsb_packet_generator_impl::modes_check_crc(unsigned char data[], int length){
        if(crc_table[1] != POLY) generate_crc_table();
        unsigned int crc=0;
        for(int i=0; i<length; i++) {
            crc = crc_table[((crc>>16) ^ data[i]) & 0xff] ^ (crc << 8);
        }
        return crc & 0xFFFFFF;
    }

    int
    adsb_packet_generator_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      
      float *out = (float *) output_items[0];

      time_t now;
      time(&now);

      unsigned char message[15]={0};
      unsigned char payload[14]={0};
      int temp;
      string line;
      string word;

      //first 4 bytes of the packet, always the same
      payload[0] = 141; //Downlink Format + Capability
      //address of the sender
      memcpy(&payload[1],addr,3*sizeof(unsigned char));

      if (difftime(now,last_packet_time)*1000*1000>=DELAY){

         if (noutput_items<240){
             noutput_items = 0;
             return 0;
         }

        //determine the key to be used for this slot
        int key_indicator = (count/TOT_PKTS_PER_ROUND);
        unsigned char key_this_slot[KEY_LEN]={0};
        unsigned char key_last_slot[KEY_LEN]={0};

        memcpy(&key_this_slot, Keys_Table[key_indicator+1], KEY_LEN*sizeof(unsigned char));
        memcpy(&key_last_slot, Keys_Table[key_indicator], KEY_LEN*sizeof(unsigned char));


        if (count%TOT_PKTS_PER_ROUND  == 0){
                //here you should send the key used in the previous authentication round
                // at the first round, you should send the key chain commit

                //reset the ADS-B information message counter
                adsb_info_message_count = 0;

                memset(&Messages_table, 0, NUM_MSG_PKT_IN_ROUND*ADSB_MESSAGE_SIZE*sizeof(unsigned char));

                //reset the count_pkts_this_slot counter
                count_pkts_this_slot = 0;

                //create 5-th byte of the packet
                payload[4] = 32; //verification key type of SOS

                //add payload
                memcpy(&payload[5], key_last_slot, (AVL_PAYLOAD_BITS/8)*sizeof(unsigned char));


        } else {
            if (count%TOT_PKTS_PER_ROUND < NUM_KEY_PKTS){
                //here you should send the other parts of the key used in the previous authentication round

                //create 5-th byte of the packet
                payload[4] = 32; //verification key type of SOS

                //add payload
                for (int i=0; i<(AVL_PAYLOAD_BITS/8); i++){
                    if((AVL_PAYLOAD_BITS/8)*(count%TOT_PKTS_PER_ROUND)+i < KEY_LEN){
                        //payload[5+i] = key_this_slot[(AVL_PAYLOAD_BITS/8)*(count%TOT_PKTS_PER_ROUND)+i];
                        payload[5+i] = key_last_slot[(AVL_PAYLOAD_BITS/8)*(count%TOT_PKTS_PER_ROUND)+i];
                    }else{
                        payload[5+i] = 0;
                    }
                }
            } else {

                if (count%TOT_PKTS_PER_ROUND == NUM_MSG_PKT_IN_ROUND+NUM_KEY_PKTS){
                    //here you should prepare your signature and send the first part

                    //create the signature of the messages
                    unsigned char string_to_sign[NUM_MSG_PKT_IN_ROUND*ADSB_MESSAGE_SIZE] = {0};
                    for (int k=0; k<NUM_MSG_PKT_IN_ROUND; k++){
                        for(int j=0; j<ADSB_MESSAGE_SIZE; j++){
                            string_to_sign[ADSB_MESSAGE_SIZE*(k)+j] = Messages_table[k][j];
                        }
                    }


                    //do HMAC-SHA256, using the key at this stage and the string ss.str();
                    unsigned char result[SIGNATURE_LEN];
                    std::string hashed;

                    unsigned char* hashed2;
                    std::string key_string;
                    std::string msg_string;

                    key_string = hexStr(key_this_slot, sizeof (key_this_slot) / sizeof (key_this_slot[0]));
                    msg_string = hexStr(string_to_sign, sizeof(string_to_sign)/sizeof(string_to_sign[0]));

                    hashed2=HMAC(EVP_sha256(), key_string.c_str(), strlen(key_string.c_str()), ( unsigned char *)msg_string.c_str(), strlen(msg_string.c_str()), NULL, NULL);

                    //save the unsigned char version of the string signature
                    std::vector<char> temp_vect;
                    temp_vect = HexToBytes(hashed);

                    for (int j=0; j<SIGNATURE_LEN; j++){
                        signature_this_slot[j] = (unsigned char)(hashed2[j]);
                    }

                    //create 5-th byte of the packet
                    payload[4] = 25; //verification digest type of SOS

                    //start sending the signature
                    memcpy(&payload[5], signature_this_slot, (AVL_PAYLOAD_BITS/8)*sizeof(unsigned char));

                } else {
                        if (count%TOT_PKTS_PER_ROUND > NUM_MSG_PKT_IN_ROUND+NUM_KEY_PKTS){
                            //here you should send the other parts of the signature

                            //create 5-th byte of the packet
                            payload[4] = 25; //verification digest type of SOS

                            //add the signature part
                            for (int i=0; i<(AVL_PAYLOAD_BITS/8); i++){
                                if( (AVL_PAYLOAD_BITS/8)*(count_pkts_this_slot-NUM_KEY_PKTS-adsb_info_message_count)+i < SIGNATURE_LEN){
                                    payload[5+i] = signature_this_slot[(AVL_PAYLOAD_BITS/8)*(count_pkts_this_slot-NUM_KEY_PKTS-adsb_info_message_count)+i];
                                } else{
                                    payload[5+i] = 0;
                                }
                            }

                        } else {
                            //all the other cases, send the message packet and record them to further use for the signature

                            getline (myfile,line);

                            string word = "";
                            int i =0;
                            for (auto x : line){
                              if (x == ' '){

                                  temp = stoi(word);
                                  payload[i] = (unsigned char)temp;

                                  //record the packet in the sig structure, in a way that you can later use it
                                  Messages_table[adsb_info_message_count][i] = payload[i];

                                  i++;
                                  word = "";
                              } else {
                                  word = word + x;
                              }
                            }

                            adsb_info_message_count++;

                        }
                }
            }
        }

        //here you should calculate the CRC of the packet
        //also for normal messages, it will output the same number
        crc_table[1] = 0;
        unsigned int crc_int;
        crc_int = modes_check_crc(payload, ADSB_MESSAGE_SIZE-3); //3 bytes are dedicated to the CRC

        payload[11] = crc_int >> 16;
        payload[12] = crc_int >> 8;
        payload[13] = crc_int >> 0;

         // message is here. You can do whatever you want. Bye!

         memcpy(out,preamble_bits,16*sizeof(float));

         sendBits(1,payload,14, out);

         time(&last_packet_time);
         count++;
         count_pkts_this_slot++;

         //uniform packet loss model
//         double LOSS_PROBABILITY = 30;
//         bool lost_flag;
//
//         std::default_random_engine generator;
//         double number;
//         std::uniform_real_distribution<double> distribution(0.0,1.0);
//         lost_flag = 0;
//
//         int RX_NO = 5;
//         int lost_pkts_rx = 0;
//         for (int j=0; j<RX_NO; j++){
//             for (int i=0; i<count*seed; i++){
//                number = distribution(generator);
//             }
//             //cout<<"Number: "<<number<<endl;
//             if (number*100 < LOSS_PROBABILITY){
//                //lose the packet
//                lost_flag = 1;
//                lost_pkts_rx = lost_pkts_rx+1;
//             }
//         }
//
//         //cout<<"Lost pkts: "<<lost_pkts_rx<<endl;
//
//         //std::cout<<"Payload: ";
//         if (lost_pkts_rx < (RX_NO)){
//            for(int j=0; j< ADSB_MESSAGE_SIZE; j++){
//                std::cout<<int(payload[j]);
//                if (j<ADSB_MESSAGE_SIZE-1){
//                    std::cout<<" ";
//                }
//            }
//            std::cout<<std::endl;
//            //cout << "Lost links: "<<lost_pkts_rx<<endl;
//         } else{
//              //cout<<"Lost"<<endl;
//         }
//
//        if (lost_flag == 1){
//            //cout << "Lose the packet"<<endl;
//            return 0;
//        }


      } else{
            return 0;
      }
      return noutput_items;
    }

  } /* namespace adsb */
} /* namespace gr */

