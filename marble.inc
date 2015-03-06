#declare Black_Marble =
texture {
pigment
 {granite
  turbulence 0.0
  color_map
   {[0.0, 0.3 color White color Black]
    [0.3, 0.4 color Black color Black]
    [0.4, 0.6 color Black color Black]
    [0.6, 1.0 color Black color Black]
   }
 }
  finish {
   phong 1.5
   reflection 0.1
   //crand 0.02
  }
}
