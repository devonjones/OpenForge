include <1x2_curved_lines.scad>
//  { 'back': [35, 51, 53, 15, 19, 57], -> 35, 51, 53, 19, 57, 20
//    'front': [18, 34, 6, 16, 9, 31],
//    'sides': [59, 14]},
//  { 'back': [], 'front': [], 'sides': [15, 29, 49, 9, 26, 63]}]

union() {
  1x2_static_stagger_curved_line([18, 34, 6, 16, 9, 31], [35, 51, 53, 19, 57, 20], [59, 14]);
  translate([0,0,7]) 1x2_static_staggered_curved_top([15, 29, 49, 9, 26, 63]);
}
