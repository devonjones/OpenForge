include <../floor_tile/concrete_floor.scad>

module concrete_edge_wall(x,y) {
  union() {
    concrete_floor(x,y);
    translate([0,25*y,0]) cube([25*x,9.2,49]);
  }
}

//concrete_edge_wall(4,4);
