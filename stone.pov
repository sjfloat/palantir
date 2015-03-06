/*
 * $Id: stone.pov,v 1.1 1999/02/15 21:05:48 sj2393 Exp sjones $
 */

#include "glass.inc"

#declare stone =
object {
  generic_stone
  //texture { T_Glass3 }
  texture { 
    finish { F_Glass4 }
    pigment { color rgbf <0.7, 0.7, 0.7, 0.9> }
    //pigment { color rgbf <0.1, 0.7, 0.8, 0.8> }
  }
  interior{ I_Glass }
}

