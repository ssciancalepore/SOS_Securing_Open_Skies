# SOS - Securing Open Skies - Standard Compliant and Packet Loss Tolerant Security Framework for ADS-B communications

*Authors:* [Savio Sciancalepore](https://github.com/ssciancalepore), [Roberto Di Pietro]() 

*Date:* 20th of November, 2018

This README file guides toward the correct configuration and running of the proof-of-concept of the SOS framework.

### Requirements
 - GNURadio ecosystem 
 - Ettus Research Software Defined Radios (optional) 

### Description

The proof-of-concept is made up of 3 parts:

- The ADS-B Transmitter
- The ADS-B Receiver
- The SOS Community Server

Each part is in a different folder, identified via related names.

### Installation

To install the ADS-B Transmitter modules, run the following commands:
sh
$ cd <path_sos>/gr-adsb/
$ mkdir build
$ cd build
$ make
$ sudo make install
$ sudo ldconfig


To install the ADS-B Receiver Module, run the following commands:
sh
$ cd <path_sos>/gr-air-modes/
$ mkdir build
$ cd build
$ make
$ sudo make install
$ sudo ldconfig

### Usage

To run the proof-of-concept, you need to maintain the three folders in the same path.
 
First, run the community server:
sh
$ python opensky-server.py

then, if you are testing its working, you can use the simulation mode:
sh
$ ./test_opensky_server.sh

You will see that messages will start appearing on the console of the opensky server, and authenticity will be verified. Also, attacks will be simulated and rejected.

Note that the opensky server and the emitter must be synchronized to achieve message authentication. This means that the number of messages delivered in the slot must match the number of messages in the variable NUM_TOT_PKTS_IN_SLOT


If you are in real mode, using the Ettus Research Software Defined Radios, first you have to turn on your receivers, with the following command for each of the receivers:
sh
$ modes_rx -D addr=<addr> -A RX2 -f 1090000000 -n > <output_file>

where:
- <addr> is the IP address of your Ettus receiver
- <output_file> is the name of your output file. To allow the server to behave correctly, the output file should be in the local folder of the modes_rx application.


Then, you can run the grc file gr-adsb/examples/test.grc in GNURadio and the whole proof-of-concept will start working. Alternatively, you can run the python generated file.

Enjoy the SOS framework!

