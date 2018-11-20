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


#ifndef INCLUDED_ADSB_ADSB_PACKET_GENERATOR_H
#define INCLUDED_ADSB_ADSB_PACKET_GENERATOR_H

#include <adsb/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
  namespace adsb {

    /*!
     * \brief <+description of block+>
     * \ingroup adsb
     *
     */
    class ADSB_API adsb_packet_generator : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<adsb_packet_generator> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of adsb::adsb_packet_generator.
       *
       * To avoid accidental use of raw pointers, adsb::adsb_packet_generator's
       * constructor is in a private implementation
       * class. adsb::adsb_packet_generator::make is the public interface for
       * creating new instances.
       */
      static sptr make(char* file, float amp, float delay);
    };

  } // namespace adsb
} // namespace gr

#endif /* INCLUDED_ADSB_ADSB_PACKET_GENERATOR_H */

