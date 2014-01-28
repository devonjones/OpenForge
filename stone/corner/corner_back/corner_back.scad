module corner_back(x) {
  union() {
    translate([0,0,0]) scale([1,1,1.1]) import(str("../corner_lines/",x,"x_staggered_corner_line_1.stl"));
    translate([0,0,7.7]) scale([1,1,1]) import(str("../corner_lines/",x,"x_corner_line_1.stl"));
    translate([0,0,14.7]) scale([1,1,1]) import(str("../corner_lines/",x,"x_staggered_corner_line_2.stl"));
    translate([0,0,21.7]) scale([1,1,.7]) import(str("../corner_lines/",x,"x_corner_line_2.stl"));
    translate([0,0,26.6]) scale([1,1,.5]) import(str("../corner_lines/",x,"x_staggered_corner_line_3.stl"));
    translate([0,0,30.1]) scale([1,1,7.7/7]) import(str("../corner_lines/",x,"x_corner_line_top.stl"));
  }
}

//corner_back(1);

