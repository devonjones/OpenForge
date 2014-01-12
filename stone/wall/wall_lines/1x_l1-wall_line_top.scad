include <1x_wall_lines.scad>
//  { 'back': [20, 22], 'front': [8, 28], 'sides': [21, 29]},
//  { 'back': [], 'front': [], 'sides': [43, 52]}]

union() {
  1x_static_wall_line([20, 22], [8, 28], [21, 29], 0.01);
  translate([0,0,7]) 1x_static_wall_top([43, 52]);
}
