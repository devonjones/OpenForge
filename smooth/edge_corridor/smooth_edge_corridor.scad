include <../floor_tile/smooth_floor.scad>

module smooth_edge_corridor(x,y) {
  union() {
    translate([0,9.2,0]) smooth_floor(x,y);
    translate([0,25*y+9.2,0]) cube([25*x,9.2,49]);
    translate([0,0,0]) cube([25*x,9.2,49]);
  }
}

//smooth_edge_corridor(2,4);
