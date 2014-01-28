include <1x_corner_lines.scad>
//  { 'back1': [61, 23, 59],
//    'back2': [15, 57, 62],
//    'interior1': [9, 34],
//    'interior2': [1, 24],
//    'sides': [42, 58]}, -> 58, 12
//  { 'back1': [],
//    'back2': [],
//    'interior1': [],
//    'interior2': [],
//    'sides': [33, 60, 54, 1, 15]}] -> 33, 60, 54, 1, 19

union() {
  //1x_static_corner_line([61, 23, 59], [15, 57, 62], [9, 34], [1, 24], [42, 58]);
  1x_static_corner_line([61, 23, 59], [15, 57, 62], [9, 34], [1, 24], [58, 12]);
  translate([0,0,7]) 1x_static_corner_top([33, 60, 54, 1, 19]);
}
