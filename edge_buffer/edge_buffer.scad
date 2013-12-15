module edge_buffer_line(x) {
  union() {
    translate([0,0,0]) cube([25*x,10.2,10.5]);
  }
}

module edge_buffer_corner_1spoke(len) {
  union() {
    translate([0,0,0]) cube([25*len+10.2,10.2,10.5]);
  }
}

module edge_buffer_corner_2spoke(len) {
  union() {
    edge_buffer_corner_1spoke(len);
    translate([0,10.2,0]) cube([10.2,25*len,10.5]);
  }
}

module edge_buffer_corner_3spoke(len) {
  union() {
    edge_buffer_corner_2spoke(len);
    translate([-25*len,0,0]) cube([25*len,10.2,10.5]);
  }
}

module edge_buffer_corner_4spoke(len) {
  union() {
    edge_buffer_corner_3spoke(len);
    translate([0,-25*len,0]) cube([10.2,25*len,10.5]);
  }
}

module edge_buffer_corner_wall_1spoke(len) {
  union() {
    edge_buffer_corner_1spoke(len);
    translate([0,0,10.5]) cube([10.2, 10.2, 38.5]);
  }
}

module edge_buffer_corner_wall_2spoke(len) {
  union() {
    edge_buffer_corner_2spoke(len);
    translate([0,0,10.5]) cube([10.2, 10.2, 38.5]);
  }
}

module edge_buffer_corner_wall_3spoke(len) {
  union() {
    edge_buffer_corner_3spoke(len);
    translate([0,0,10.5]) cube([10.2, 10.2, 38.5]);
  }
}

module edge_buffer_corner_wall_4spoke(len) {
  union() {
    edge_buffer_corner_4spoke(len);
    translate([0,0,10.5]) cube([10.2, 10.2, 38.5]);
  }
}
