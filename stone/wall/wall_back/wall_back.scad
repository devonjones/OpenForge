module wall_back(x) {
  union() {
    translate([0,0,0]) scale([1,1,1.2]) import(str("../wall_lines/",x,"x_l1-wall_line_1.stl"));
    translate([0,0,8.4]) scale([1,1,1]) import(str("../wall_lines/",x,"x_l1-staggered_wall_line_1.stl"));
    translate([0,0,15.4]) scale([1,1,1]) import(str("../wall_lines/",x,"x_l1-wall_line_2.stl"));
    translate([0,0,22.4]) scale([1,1,.7]) import(str("../wall_lines/",x,"x_l1-staggered_wall_line_2.stl"));
    translate([0,0,27.3]) scale([1,1,.5]) import(str("../wall_lines/",x,"x_l1-wall_line_3.stl"));
    translate([0,0,30.8]) scale([1,1,7.7/7]) import(str("../wall_lines/",x,"x_l1-staggered_wall_line_top.stl"));
  }
}

//wall_back(3);

module wall_back_b(x) {
  union() {
    translate([0,0,0]) scale([1,1,1.2]) import(str("../wall_lines/",x,"x_l1-staggered_wall_line_2.stl"));
    translate([0,0,8.4]) scale([1,1,1]) import(str("../wall_lines/",x,"x_l1-wall_line_2.stl"));
    translate([0,0,15.4]) scale([1,1,1]) import(str("../wall_lines/",x,"x_l1-staggered_wall_line_3.stl"));
    translate([0,0,22.4]) scale([1,1,.7]) import(str("../wall_lines/",x,"x_l1-wall_line_1.stl"));
    translate([0,0,27.3]) scale([1,1,.5]) import(str("../wall_lines/",x,"x_l1-staggered_wall_line_1.stl"));
    translate([0,0,30.8]) scale([1,1,7.7/7]) import(str("../wall_lines/",x,"x_l1-wall_line_top.stl"));
  }
}

//wall_back_b(3);
