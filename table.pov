/*
 * $Id: table.pov,v 1.2 2001/12/14 14:06:49 sjones Exp sjones $
 */

#include "textures.inc"
/* #include "textures.v2" */
#include "woods.inc"
#include "marble.inc"

#include "dim.inc"

#declare table_top =
difference {
  cylinder {
    <0, Table_Bottom, 0>, <0, Table_Height, 0>, Table_Rad
  }
  generic_stone		// hollow for stone
  texture { Black_Marble }
  /*
  pigment {
    Blood_Marble
  }
  */
  finish {
    ambient 0.4
  }
}


#declare Table_Leg_Rad = 0.5;
#declare leg =
cylinder {
    <0, 0, 0>, <0, Table_Bottom, 0>, Table_Leg_Rad
    texture {
      T_Wood1
      //T_Wood32
    }
    finish {
      ambient 0.8
    }
}

#declare Table_Leg_Circle_Rad = 5.5;
#declare table =
union {
  object { table_top }
  object { leg translate <0, 0, -Table_Leg_Circle_Rad>}
  object { leg translate <0, 0, Table_Leg_Circle_Rad>}
  object { leg translate <Table_Leg_Circle_Rad, 0, 0>}
  object { leg translate <-Table_Leg_Circle_Rad, 0, 0>}
}

