#!/usr/bin/env python2

import sys
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import hmac
import hashlib
import numpy as np
import itertools
import math
from random import shuffle

count=0

# array that contains the ICAO addresses I have info about the key, statically defined
# it is supposed that they are stored on the central server
ICAO_addr_key =["128 7 224", "192 98 252"]

# array that contains the key chain commits of the ICAO_addresses in ICAO_addr_key
key_chain_commits = [[145, 211, 233, 101, 139, 250, 194, 221, 147, 182, 12, 246, 230, 200, 218, 221],[]]

#vector that contains messages received from a given ICAO in this slot
messages_this_slot=[[],[]]

#vector that contains the key that I'm receiving in this slot
key_this_slot=[[],[]]

#vector that contains the signature that I'm receiving in this slot
signature_this_slot=[[],[]]

#state variable, used to verify the elements
prev_msg_type=["",""]

#variable containing the previous received lines on the different file, used to discard replicated messages
#prev_msg=""
prev_msg=[]

#variable containing the last file generating the trigger, used to discard replicated messages
prev_event_path=""

#size of the digest in bytes
DIGEST_SIZE=16

#size of the key in bytes
KEY_SIZE=16

#maximum number of hashes
MAX_HASH_NUMBER=100

#duration of the slot
SLOT_DURATION_IN_MSEC=13*1000

# total number of pkts in slot
NUM_TOT_PKTS_IN_SLOT=13

# messages that I expect in the slot
NUM_EXPECTED_ADSB_MESSAGES=7

# slot counter, it counts the number of slots elapsed from the beginning of the tests
slot_counter=0
slots_correctly_verified=0
slot_ref=0

start_time=0

# last view of the file
last_lines_no=[]

# event paths
event_paths = []

#function to save the state of the server
def saveState(index_now, actual_state):
    prev_msg_type[index_now] = actual_state

#function to reset the State Variables already verified
def reset_StateVariables(index_now):
    global messages_this_slot, key_this_slot, signature_this_slot

    messages_this_slot[index_now] = []
    key_this_slot[index_now] = []
    signature_this_slot[index_now] = []

#function to verify the HMAC of the messages received in the previous slot
def verify_signature(messages,key, signature_to_verify):

    messages_last_slot_bytes = []
    for i in range(0, len(messages)):
        temp_msg = messages[i].split(" ")
        # print temp_msg
        for j in range(0, len(temp_msg)):
            messages_last_slot_bytes.append(int(temp_msg[j]))


    key_just_received_bytes = []
    for j in range(0, len(key)):
        key_just_received_bytes.append(int(key[j]))


    keystring = ""
    try:
        for i in range(0, 16):
            temp = '{:02x}'.format(key_just_received_bytes[i], 'x')  # d in case you want decimals
            keystring += temp
    except IndexError:
        print "Missing key packet."
        return False

    mess_string = ""

    for i in range(0, len(messages_last_slot_bytes)):
        temp = '{:02x}'.format(messages_last_slot_bytes[i], 'x')
        mess_string += temp


    # use key_this_slot[index_now] on messages_last_slot_bytes and verify it matches with signature_this_slot
    dig = hmac.new(keystring, msg=mess_string, digestmod=hashlib.sha256).hexdigest().format("02x")
    digest = dig[:2 * DIGEST_SIZE]

    sig_bytes = []
    for j in range(0, len(signature_to_verify)):
        sig_bytes.append(int(signature_to_verify[j]))

    sig_string = ""
    try:
        for i in range(0, DIGEST_SIZE):
            temp = '{:02x}'.format(sig_bytes[i], 'x')
            sig_string += temp
    except IndexError:
        print "Missing Signature packet"
        return False

    if sig_string == digest:
        return True
    else:
        return False

#function to verify that the key used to sign the messages is effectively related with the sender
def verify_key(key,index_now):
    key_just_received_bytes = []
    for j in range(0, len(key)):
        key_just_received_bytes.append(int(key[j]))

    keystring = ""
    for i in range(0, 16):
        temp = '{:02x}'.format(key_just_received_bytes[i], 'x')  # d in case you want decimals
        keystring += temp
    initialkeystring = keystring

    key_chain_bytes = []
    for j in range(0, len(key_chain_commits[index_now])):
        key_chain_bytes.append(int(key_chain_commits[index_now][j]))

    keycommitstring = ""
    try:
        for i in range(0, 16):
            temp = '{:02x}'.format(key_chain_bytes[i], 'x')  # d in case you want decimals
            keycommitstring += temp
    except IndexError:
        print "A Piece of KeyCommitString was lost. Keys not verifiable forever"
        return False

    for i in range(0, slot_ref):
        h = hashlib.sha256(keystring).hexdigest().format("02x");
        keystring = h[:2 * KEY_SIZE]


    if keystring == keycommitstring:
        #Key Verified
        return True

    else:
        #Key NOT Verified
        return False


# this is the handler of the modifications. As soon as the receivers log new info in the files, they acquire the modifications
class MyHandler(FileSystemEventHandler):
    def on_modified(self, event):
        global count, messages_this_slot, key_this_slot, signature_this_slot,prev_msg,prev_event_path, actual_packet_time, last_packet_time, slot_counter, slot_ref, start_time,last_lines_no, slots_correctly_verified

        # open the last modified file
        file = open(event.src_path, 'r')
        # read the last line written
        lines = file.read().splitlines()
        # close the file
        file.close()

        try:
            val = lines[-1]
            bytes_line = val.split(" ")
        except ValueError:
            #No number
            return
        except IndexError:
            #No Modifications, only opening of the files
            return

        count+=1
        actual_packet_time = int(round(time.time() * 1000))
        init_time = int(round(time.time() * 1000))
        if count == 1:
            start_time = init_time

        not_verified_flag=0

        # realize actual slot
        if count==1:
        #     #this is the first packet received by the server
            slot_counter = 0
            last_packet_time = actual_packet_time

        else:
            if (actual_packet_time - last_packet_time)>SLOT_DURATION_IN_MSEC:
                slot_counter+=1
                last_packet_time = actual_packet_time

        #find the path of the file generating the trigger
        if event.src_path in event_paths:
            #print event_paths
            # extract the indices
            index_path = event_paths.index(event.src_path)
        else:
            event_paths.append(event.src_path)
            # extract the indices
            index_path = event_paths.index(event.src_path)
            last_lines_no.append(0)

        #calculate the number of new lines
        num_lines_now = len(lines)
        no_diff_lines = num_lines_now - last_lines_no[index_path]
        last_lines_no[index_path] = num_lines_now

        if event.src_path==prev_event_path:
            if no_diff_lines == 0:
                #there were 2 notifications very quick before
                return

        for line_index in reversed(xrange(no_diff_lines)): #this reverse order preserve the time of arrival
            #print lines[-1-line_index]
            last_line = lines[-1-line_index]

            actual_packet_time_now = int(round(time.time() * 1000))

            slot_ref = int (math.ceil( ((actual_packet_time_now - start_time)) / (SLOT_DURATION_IN_MSEC)))


            if last_line in prev_msg and event.src_path!=prev_event_path:
                #Already processed. Discarding
                return

            prev_msg.append(last_line)
            prev_event_path=event.src_path

            #extract the message
            bytes_message = last_line.split(" ")

            #extract the ICAO
            try:
                ICAO_now = bytes_message[1]+" "+ bytes_message[2]+ " " + bytes_message[3]
            except IndexError:
                return

            #continue to process only if the ICAO is in the list of ICAOs from which you have SOS info

            if ICAO_now in ICAO_addr_key:
                index_now = ICAO_addr_key.index(ICAO_now)

                #verify the type of message
                if bytes_message[4] == "25":
                    print "Verification Message"
                    #concatenate the items in the right structure
                    sig_bytes = last_line.split(" ")
                    for i in range(5, 11):
                        signature_this_slot[index_now].append(sig_bytes[i])


                    #save state
                    saveState(index_now, "sig")

                elif bytes_message[4] == "32":
                    print "Key message"
                    # concatenate the items in the right structure

                    key_bytes = last_line.split(" ")
                    for i in range(5, 11):
                        key_this_slot[index_now].append(key_bytes[i])

                    #save state
                    saveState(index_now, "key")

                else:
                    print "ADS-B message"


                    # understand your state
                    if prev_msg_type[index_now] == "key":
                        #verify in case it is the key chain commit
                        if key_chain_commits[index_now] == [] or slot_ref == 0:
                            # this was the first key that I'm receiving, that is the key chain commit

                            #clean the key_this_slot[index_now] list
                            key_this_slot[index_now] = [];

                            # concatenate the items in the right structure
                            messages_this_slot[index_now].append(last_line)

                            # save state
                            saveState(index_now, "info")
                            return

                        # here you have to verify that SOS key is correct
                        # default, no digest verified
                        not_verified_flag = 1

                        init_time_sig = int(round(time.time() * 1000000))

                        if verify_signature(messages_this_slot[index_now], key_this_slot[index_now], signature_this_slot[index_now])==True:
                            finish_time_sig = int(round(time.time() * 1000000))
                            #print "Duration [us]: " + str(finish_time_sig - init_time_sig)
                            #print str(finish_time_sig - init_time_sig)

                            #Digest Verified
                            not_verified_flag = 0

                            if verify_key(key_this_slot[index_now], index_now)==True:
                                #Key Verified

                                slots_correctly_verified=slots_correctly_verified+1

                                #print slot_counter
                                print "Slots verified percentage: "+ str( float( float(slots_correctly_verified)/float(slot_counter)) * 100)
                                # reset tables
                                reset_StateVariables(index_now)
                            else:
                                print "Key NOT Verified."
                        else:
                            #print "Digest NOT Verified. Trying recover..."
                            #print messages_this_slot
                            # hypothesis: the adversary introduces his own messages without modifying the original order

                            #generate random combinations of elements in messages_this_slot[index_now] and try to find a match
                            indexes = np.arange(len(messages_this_slot[index_now]))
                            comb = list(itertools.combinations(messages_this_slot[index_now], NUM_EXPECTED_ADSB_MESSAGES))
                            shuffle(comb)

                            for subset in comb:
                                if verify_signature(subset, key_this_slot[index_now],
                                                 signature_this_slot[index_now]) == True:


                                    finish_time_sig_2 = int(round(time.time() * 1000000))

                                    not_verified_flag = 0
                                    if verify_key(key_this_slot[index_now], index_now) == True:

                                        slots_correctly_verified = slots_correctly_verified + 1

                                        print "Slots verified percentage: " + str(  float ( float(slots_correctly_verified) / float(slot_counter)) * 100)

                                        # reset tables
                                        reset_StateVariables(index_now)
                                        break
                                    else:
                                        print "Key NOT Verified."
                                        not_verified_flag = 1
                                        reset_StateVariables(index_now)
                                        break
                                else:
                                    #Digest NOT Verified
                                    # handle cases not verified at all
                                    not_verified_flag=1

                    #if not_verified_flag==1:
                        #the attacker could have modified the order of the messages
                        #print "TODO"
                        #not_verified_flag = 1

                    if not_verified_flag==1:
                        print "not verified"
                        #print messages_this_slot
                        reset_StateVariables(index_now)

                    # concatenate the items in the right structure
                    messages_this_slot[index_now].append(last_line)

                    #save state
                    saveState(index_now, "info")

        finish_time = int(round(time.time() * 1000000))


if __name__ == "__main__":
    
    path = sys.argv[1] if len(sys.argv) > 1 else './gr-air-modes/apps/'
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path, recursive=False)
    # recursive=True, watch for modifications in subfolder

    observer.start()
    #print "Server Started"
    try:
        while True:
            time.sleep(0.001)
    except KeyboardInterrupt:
        observer.stop()
    observer.join() 
