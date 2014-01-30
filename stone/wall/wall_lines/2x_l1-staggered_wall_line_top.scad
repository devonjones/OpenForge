include <2x_wall_lines.scad>
//  { 'back': [39, 48, 19, 53],
//    'front': [55, 43, 32, 46],
//    'sides': [45, 40, 8, 13, 41, 26]},
//  { 'back': [], 'front': [], 'sides': [50, 25, 62, 54, 37, 58]}]

union() {
  2x_static_stagger_wall_line([55, 43, 32, 46], [39, 48, 19, 53], [8, 13, 41, 26, 45, 40]);
  translate([0,0,7]) 2x_static_staggered_wall_top([50, 25, 62, 54, 37, 58]);
}
