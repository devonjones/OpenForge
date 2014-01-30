include <1x_wall_lines.scad>
//  { 'back': [6, 44, 12], 'front': [10, 4, 46], 'sides': [9, 62]},
//  { 'back': [], 'front': [], 'sides': [10, 1, 3]}]

union() {
  1x_static_stagger_wall_line([6, 44, 12], [10, 4, 46], [9, 62]);
  translate([0,0,7]) 1x_static_staggered_wall_top([10, 1, 3]);
}
