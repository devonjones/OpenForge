include <../floor_tile/concrete_floor.scad>

module concrete_edge_corridor(x,y) {
  union() {
    translate([0,9.2,0]) concrete_floor(x,y);
    translate([0,25*y+9.2,0]) cube([25*x,9.2,49]);
    translate([0,0,0]) cube([25*x,9.2,49]);
  }
}

//concrete_edge_corridor(2,4);
