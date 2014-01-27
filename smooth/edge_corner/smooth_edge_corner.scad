include <../floor_tile/smooth_floor.scad>

module smooth_edge_corner(x,y) {
  union() {
    smooth_floor(x,y);
    translate([0,25*y,0]) cube([25*x,9.2,49]);
    translate([25*x,0,0]) cube([9.2,25*y+9.2,49]);
  }
}

//smooth_edge_corner(1,1);
