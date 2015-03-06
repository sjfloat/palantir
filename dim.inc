#ifdef(Dim_Inc_Temp)
// do nothing
#else
#declare Dim_Inc_Temp = 1;
/*
#declare Dim_Inc_Temp = 1;
#version 1.0
*/


#declare Tower_Rad = 20;
#declare Tower_Height = 20;
#declare Wall_Thickness = 5;

#declare Window_Left_Border = -5;
#declare Window_Right_Border = 5;
#declare Window_Top_Border = 12;
#declare Window_Bottom_Border = 5;
#declare Window_X_Center = 
  Window_Right_Border-((Window_Right_Border - Window_Left_Border)/2);
#warning concat("Window_X_Center",str(Window_X_Center,5,0),"\n")
#declare Window_Y_Center = 
  Window_Top_Border-((Window_Top_Border - Window_Bottom_Border)/2);
#warning concat("Window_Y_Center",str(Window_Y_Center,5,0),"\n")


#declare Table_Height = 3;
#declare Table_Rad = 6;
#declare Table_Thickness = 1;
#declare Table_Bottom = Table_Height - Table_Thickness;


#declare Stone_Rad = 2;
#declare Stone_Cup_Depth = 0.9;
#declare Stone_Center = Table_Height+Stone_Rad-Stone_Cup_Depth;

#declare generic_stone =
sphere {
  <0, Stone_Center, 0>, Stone_Rad
}

#end
