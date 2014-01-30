include <3x_wall_lines.scad>
//  { 'back': [11, 15, 23, 6, 57, 5, 47, 54],
//    'front': [38, 10, 13, 30, 31, 27, 55, 50],
//    'sides': [45, 0, 26, 12]},
//  { 'back': [], 'front': [], 'sides': [59, 51, 1, 42, 58, 36, 5, 14]}]

union() {
  3x_static_stagger_wall_line([38, 10, 13, 30, 31, 27, 55, 50], [23, 6, 57, 5, 47, 54, 11], [45, 0, 26, 12]);
  translate([0,0,7]) 3x_static_staggered_wall_top([59, 51, 1, 42, 58, 36, 5, 14]);
}
