
#include "colors.inc"

#include "dim.inc"

#declare wall_pigment =  
pigment {
  brick pigment{color VeryDarkBrown}, pigment{granite scale 0.2}
  mortar 0.1
}

#declare window1 =
box {
  < Window_Left_Border,  Window_Bottom_Border, -Tower_Rad+10>,
  < Window_Right_Border, Window_Top_Border,     Tower_Rad+10>
}

#declare window_light1 =
light_source {
  //<0,5,0>
  <Window_X_Center, Window_Y_Center, /*Tower_Rad-5*/0>
  color White 
  area_light
    < Window_Left_Border,  Window_Bottom_Border>,
    < Window_Right_Border, Window_Top_Border>,
    3,3
}

#declare walls=
difference {
  difference {
    cylinder {
      <0, 0, 0>, <0, Tower_Height, 0>, Tower_Rad+Wall_Thickness
    }
    cylinder {
      <0, 0, 0>, <0, Tower_Height, 0>, Tower_Rad
    }
  }

  // window
  object { window1 }
  /*
  cylinder {
    <0, 8, -50>, <0, 8, 50>, 5
      pigment { wall_pigment }
  }
  */
  pigment { wall_pigment }
}

#declare Floor=
plane {
  y, 0
  pigment {
    checker
      pigment { White_Marble scale 0.4}
      pigment { color Black }
  }
}


#declare tower =
merge {
  object { walls }
  object { Floor }
  //object { window_light1 }
}

