include <../floor_tile/smooth_floor.scad>

module smooth_curved(x,y) {
  union() {
    //translate([0,25*y-9.2,0]) cube([25*x,9.2,7.5]);
    //translate([0,25*y-9.2,7.5]) cube([25*x,9.2,3.7]);
    intersection() {
      smooth_floor(x,y);
      if (x < y) {
        translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(10,(25*y)-9.2,(25*y)-9.2);
      } else {
        translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(10,(25*x)-9.2,(25*x)-9.2);
      }
    }
    if (x < y) {
      difference() {
        scale([x/y,1,1]) cylinder(49,25*y,25*y);
        translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(51,25*y-9.2,25*y-9.2);
        translate([-1-25*y,-1-25*y,-1]) cube([50*y+2,25*y+1,51]);
        translate([-1-25*y,-1,-1]) cube([25*y+1,25*y+1,51]);
      }
    } else {
      difference() {
        scale([1,y/x,1]) cylinder(49,25*x,25*x);
        translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(51,25*x-9.2,25*x-9.2);
        translate([-1-25*x,-1-25*x,-1]) cube([50*x+2,25*x+1,51]);
        translate([-1-25*x,-1,-1]) cube([25*x+1,25*x+1,51]);
      }
    }
  }
}


module smooth_curved_floor(x,y) {
  difference() {
    smooth_floor(x,y);
    translate([0,0,-1]) scale([x/y,1,1]) cylinder(49,25*y+1,25*y+1);
  }
}

//smooth_curved_floor(4,4);
