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

#ifndef INCLUDED_ADSB_ADSB_PACKET_GENERATOR_IMPL_H
#define INCLUDED_ADSB_ADSB_PACKET_GENERATOR_IMPL_H

#include <adsb/adsb_packet_generator.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#include <chrono>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <string>
#include <algorithm>
#include <random>
#include <math.h>
#include <openssl/evp.h>
#include <openssl/sha.h>
#include <openssl/hmac.h>

#define ADSB_MESSAGE_SIZE 14 //total size of ADS-B message in bytes (112/8 = 14)
#define AVL_PAYLOAD_BITS 48 //available bits in ADS-B Payload

#define KEY_LEN 16 //length of the keys

#define SIGNATURE_LEN 16 //length of the signature

#define MAX_HASH_NUMBER 100 //maximum number of consecutive hash functions, used for the generation of the commit
//#define SOS_TIME_SLOT_DURATION 5 //duration of the time slot duration of the SOS protocol
#define NUM_MSG_PKT_IN_ROUND 7 // number of message packets in a single TESLA authentication round

using namespace std;

namespace gr {
  namespace adsb {

    class adsb_packet_generator_impl : public adsb_packet_generator
    {
     private:
      time_t last_packet_time; // time of the last packet
      std::ifstream myfile; //file handler to load text file for real ADS-B packet
      double difftime(clock_t t1, clock_t t2); //function for time difference
      void sendBits(int first_byte, unsigned char * data, int byte_size, float* out); //function to PPM modulate signals
      string sha256(const string str); //sha256 hash function
      string hexStr(unsigned char* data, int len); // function to convert string in hexadecimal format
      string hmac_sha256( unsigned char* str, int str_len,  unsigned char* key, int key_size); //hmac_sha256 function
      std::vector<char> HexToBytes(const std::string& hex); //function to convert hexadecimal string to bytes

      float AMP; //amplitude of the PPM waveform
      float DELAY; //interarrival time between ADS-B packets
      float preamble_bits[16]; //vector holding the bits of the Physical-layer preamble

      unsigned char master_key[KEY_LEN]; //vector holding the initial master key
      unsigned char addr[3]; //address of the emulated ADS-B transmitter

      int NUM_TESLA_PKTS; //number of messages due to the TESLA protocol to be sent in a single auth. round
      int NUM_SIG_PKTS; //number of signature packets in the slot
      int NUM_KEY_PKTS; //number of key packets in the slot
      int TOT_PKTS_PER_ROUND; //total number of messages in a single TESLA authentication round

      unsigned char key_chain_commit[SIGNATURE_LEN]; //vector holding the key chain commit
      unsigned char Keys_Table[MAX_HASH_NUMBER][KEY_LEN]; //table to store keys to be used during operation
      unsigned char Messages_table[NUM_MSG_PKT_IN_ROUND][ADSB_MESSAGE_SIZE];//table to store messages for the sign calculation
      unsigned char signature_this_slot[SIGNATURE_LEN];

      int key_num; //identifier of the key to be used in this slot
      int count; //local global counter of packets
      int count_pkts_this_slot; //counter of the packets sent into the slot
      int adsb_info_message_count; //local counter of ADS-B information messages in the time-slot

      //CRC generation
      unsigned int crc_table[256];
      const unsigned int POLY=0xFFF409;
      void generate_crc_table(void);
      unsigned int modes_check_crc(unsigned char data[], int length);

      int seed;

     public:
      adsb_packet_generator_impl(char* file, float amp, float delay);
      ~adsb_packet_generator_impl();

      // Where all the action really happens
      int work(int noutput_items,
         gr_vector_const_void_star &input_items,
         gr_vector_void_star &output_items);
    };

  } // namespace adsb
} // namespace gr

#endif /* INCLUDED_ADSB_ADSB_PACKET_GENERATOR_IMPL_H */

