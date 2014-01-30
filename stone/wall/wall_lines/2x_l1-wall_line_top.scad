include <2x_wall_lines.scad>
//  { 'back': [2, 41, 6, 50, 8],
//    'front': [17, 28, 31, 26, 14],
//    'sides': [51, 47]},
//  { 'back': [], 'front': [], 'sides': [11, 34, 27, 42, 19]},

union() {
  2x_static_wall_line([17, 28, 31, 26, 14], [2, 41, 6, 50, 8], [51, 47]);
  translate([0,0,7]) 2x_static_wall_top([11, 34, 27, 42, 19]);
}


