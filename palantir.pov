
#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "skies.inc"
#include "metals.inc"

#include "dim.inc"

// Other objects
#include "table.pov"
#include "stone.pov"
#include "tower.pov"

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
  location <0, 5, -14>
  //location <0, 6, -14>
  look_at <0, 2, 0>
}

#declare Text =
text { 
  ttf "timrom.ttf" "ORTHANC" 1, 0
  texture {
    T_Copper_5D
    //T_Silver_1C
  }
  //pigment { Red }
  translate <-2.5, 4, -7>
  scale 0.75
  //translate -5*x
  finish {
    ambient 0.5
  }
}

/*
*/
object { Text }
object { tower }
object { table }
object { stone }
sky_sphere { S_Cloud1 }



