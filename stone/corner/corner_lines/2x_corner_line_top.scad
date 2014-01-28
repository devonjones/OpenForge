include <2x_corner_lines.scad>

//union() {
  //2x_static_corner_line([40, 33, 47, 37, 43], [37, 8, 6, 34, 10], [32, 10, 5, 33], [13, 0, 1, 2], [7, 1]);
  //translate([0,39.8,7]) 2x_static_corner_top([38, 12, 42, 0, 45, 41, 46, 6, 35]);
//}

union() {
  2x_static_corner_line([40, 33, 47, 37, 43], [37, 8, 6, 34, 10], [32, 5, 33, 26], [13, 0, 1, 2], [7, 1]);
  translate([0,39.8,7]) 2x_static_corner_top([38, 12, 42, 0, 45, 41, 46, 6, 35]);
}


