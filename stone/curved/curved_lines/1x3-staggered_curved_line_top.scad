include <1x3_curved_lines.scad>
//  { 'back': [23, 6, 57, 5, 47, 54, 11],
//    'front': [38, 10, 13, 30, 31, 27, 55],
//    'sides': [45, 0]},
//  { 'back': [], 'front': [], 'sides': [59, 51, 1, 42, 58, 36, 5]}]

union() {
  1x3_static_stagger_curved_line(
    [38, 10, 13, 30, 31, 27, 55],
    [23, 6, 57, 5, 47, 54, 11],
    [45, 0]);
  translate([0,0,7]) 1x3_static_staggered_curved_top(
    [59, 51, 1, 42, 58, 36, 5]);
}
