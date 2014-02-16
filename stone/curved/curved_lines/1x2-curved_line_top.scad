include <1x2_curved_lines.scad>
//  { 'back': [56, 58, 63, 24, 26, 36],
//    'front': [21, 12, 51, 28, 54, 14],
//    'sides': [53, 4]},
//  { 'back': [], 'front': [], 'sides': [24, 33, 50, 6, 51, 60]},

union() {
  1x2_static_curved_line([21, 12, 51, 28, 54, 14], [56, 58, 63, 24, 26, 36], [53, 4]);
  translate([0,0,7]) 1x2_static_curved_top([24, 33, 50, 6, 51, 60]);
}

