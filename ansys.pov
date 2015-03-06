
#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "skies.inc"
#include "metals.inc"

// Other objects
/*
#include "table.pov"
#include "stone.pov"
#include "tower.pov"
*/

global_settings {
  assumed_gamma 2.2
}

light_source { <5, 8, -7> color White }
light_source { 
  < 5, 10,  50>
  //<-9, 6, -6> 
  color White 
}
//light_source { <-9, 6, -6> color White }

camera {

  //location <X, 0.4, -5>
  
  #declare Angle = (radians(360)*clock)
  #declare ViewDistance = 3.5
  #declare X = cos(Angle)*ViewDistance
  #declare Z = sin(Angle)*ViewDistance*-1
  //location <5, 0.1, 0>
  location <X, 0.4, Z>
  #warning concat("Angle is:",str(clock*360,5,0),"\n")
  #warning concat("X is:",str(X,5,0),"\n")
  #warning concat("Z is:",str(Z,5,0),"\n")

  // flies up at it
  //location <X, 2*((-10+clock*10)+0.4), -5>
  look_at <0, 0, 0>
}


#declare criscros =
  merge {
  // cris
  cylinder {
    <0, -20, 0>,
    <0,  20, 0>,
    .02
    pigment {
      Red
    }
  }

  // cros
  cylinder {
    <-20, 0, 0>,
    < 20, 0, 0>,
    .02
    pigment {
      Red
    }
  }
}

text { 
  ttf "timrom.ttf" "ANSYS" 1, 0
  texture {
    T_Copper_5D
  }
  rotate <0, -90, 0>
  translate <0.5, -0.5, -1.75>
  //translate <0, clock, 0>
  //translate <-2.5, 4, -7>
  //scale 0.75
  finish {
    ambient 0.5
  }
}

//object { criscros }

sky_sphere { S_Cloud1 }



