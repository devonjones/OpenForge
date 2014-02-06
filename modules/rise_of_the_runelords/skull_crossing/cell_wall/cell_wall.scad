include <../../../../smooth/floor_tile/smooth_floor.scad>

module smooth_corridor(x,y) {
  union() {
    difference() {
      smooth_floor(x,y);
      translate([-1,25*y-9.2,-1]) cube([25*x+2,10.2,13]);
      translate([-1,-1,-1]) cube([25*x+2,10.2,13]);
    }
    translate([0,25*y-9.2,0]) cube([25*x,9.2,49]);
    translate([0,0,0]) cube([25*x,9.2,49]);
  }
}

module cell_wall(y) {
  difference() {
    smooth_corridor(1,y);
    translate([5,-1,44]) cube([10,120,10]);
    for (i = [0:y-2]) {
      translate([10,18.75+i*25,-1]) cylinder(15,2.5,2.5);
      translate([10,31.25+i*25,-1]) cylinder(15,2.5,2.5);
    }
  }
}

//cell_wall(2);

module bar_strip_bottom(y) {
  difference() {
    cube([10,y*25,2.5]);
    for (i = [0:y-2]) {
      translate([5,18.75+i*25,-1]) cylinder(15,2.5,2.5);
      translate([5,31.25+i*25,-1]) cylinder(15,2.5,2.5);
    }
  }
}

//bar_strip_bottom(4);

module bar_strip_top(y) {
  difference() {
    cube([10,25*y,2.5]);
    for (i = [0:y-2]) {
      translate([5,18.75+i*25,1]) cylinder(15,4,4);
      translate([5,31.25+i*25,1]) cylinder(15,4,4);
    }
  }
}

//bar_strip_top(4);
