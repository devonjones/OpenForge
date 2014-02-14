include <1x_edge_corner_lines.scad>

//  { 'back1': [17, 47, 16, 40],
//    'back2': [55, 42, 36, 19],
//    'interior1': [23, 32, 43], -> 51, 32, 43
//    'interior2': [25, 4, 2],
//    'sides': [5, 20]},
//  { 'back1': [],
//    'back2': [],
//    'interior1': [],
//    'interior2': [],
//    'sides': [11, 48, 0, 16, 61, 4]}]

union() {
  1x_static_edge_corner_line([17, 47, 16, 40], [55, 42, 36, 19], [51, 32, 43], [25, 4, 2], [5, 20]);
  translate([0,0,7]) 1x_static_edge_corner_top([11, 48, 0, 16, 61, 4, 3]);
}

