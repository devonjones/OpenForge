include <../floor_tile/smooth_floor.scad>

module smooth_wall(x,y) {
  union() {
    translate([0,25*y-9.2,0]) cube([25*x,9.2,7.5]);
    translate([0,25*y-9.2,7.5]) cube([25*x,9.2,3.7]);
    difference() {
      smooth_floor(x,y);
      translate([-1,25*y-9.2,-1]) cube([25*x+2,10.2,13]);
    }
    translate([0,25*y-9.2,7.5+3.7]) cube([25*x,9.2,37.8]);
  }
}

//smooth_wall(2,1);
