/* -*- c++ -*- */

#define ADSB_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "adsb_swig_doc.i"

%{
#include "adsb/adsb_packet_generator.h"
%}


%include "adsb/adsb_packet_generator.h"
GR_SWIG_BLOCK_MAGIC2(adsb, adsb_packet_generator);
