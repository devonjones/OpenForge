include <../../../concrete/floor_tile/concrete_floor.scad>

module concrete_edge_corridor(x,y) {
  union() {
    translate([0,9.2,0]) concrete_floor(x,y);
    translate([0,25*y+9.2,0]) cube([25*x,9.2,49]);
    translate([0,0,0]) cube([25*x,9.2,49]);
  }
}

module edge_cell_wall(y) {
  difference() {
    concrete_edge_corridor(1,y);
    translate([5,-1,44]) cube([10,120,10]);
    for (i = [0:y-1]) {
      translate([10,15.45+i*25,-1]) cylinder(15,2.5,2.5);
      translate([10,27.95+i*25,-1]) cylinder(15,2.5,2.5);
    }
  }
}

module cell_bar_strip_bottom(y) {
  difference() {
    cube([10,y*25+9.2+9.2,2.5]);
    for (i = [0:y-1]) {
      translate([5,15.45+i*25,-1]) cylinder(15,2.5,2.5);
      translate([5,27.95+i*25,-1]) cylinder(15,2.5,2.5);
    }
  }
}

module cell_bar_strip_top(y) {
  difference() {
    cube([10,25*y+9.2+9.2,2.5]);
    for (i = [0:y-1]) {
      translate([5,15.45+i*25,1]) cylinder(15,4,4);
      translate([5,27.95+i*25,1]) cylinder(15,4,4);
    }
  }
}
