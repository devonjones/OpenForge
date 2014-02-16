include <1x3_curved_lines.scad>
//  { 'back': [28, 43, 16, 18, 8, 26, 30],
//    'front': [56, 57, 20, 5, 41, 7, 24],
//    'sides': [13, 55]},
//  { 'back': [], 'front': [], 'sides': [25, 46, 61, 60, 18, 53, 52]},

union() {
  1x3_static_curved_line(
    [56, 57, 20, 5, 41, 7, 24],
    [28, 43, 16, 18, 8, 26, 30],
    [13, 55]);
  translate([0,0,7]) 1x3_static_curved_top([25, 46, 61, 60, 18, 53, 52]);
}
