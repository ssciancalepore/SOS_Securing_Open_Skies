#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/savio/prefix/default/src/gr-adsb/lib
export PATH=/home/savio/prefix/default/src/gr-adsb/build/lib:$PATH
export LD_LIBRARY_PATH=/home/savio/prefix/default/src/gr-adsb/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-adsb 
