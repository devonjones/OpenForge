module stone_curved_base(x,y) {
  union() {
    intersection() {
      import(str("../../floor_tile/stone_floor_",x,"x",y,".stl"));
      if (x < y) {
        translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(20,(25*y)-9.2,(25*y)-9.2);
      } else {
        translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(20,(25*x)-9.2,(25*x)-9.2);
      }
    }
    if (x < y) {
      difference() {
        scale([x/y,1,1]) cylinder(7.5,25*y,25*y);
        translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(51,25*y-9.2,25*y-9.2);
        translate([-1-25*y,-1-25*y,-1]) cube([50*y+2,25*y+1,51]);
        translate([-1-25*y,-1,-1]) cube([25*y+1,25*y+1,51]);
      }
      difference() {
        translate([0,0,7.5]) scale([x/y,1,1]) cylinder(3.7,25*y-1,25*y-1);
        translate([0,0,-1]) scale([((25*x)-9.2)/((25*y)-9.2),1,1]) cylinder(20,(25*y)-9.2,(25*y)-9.2);
        translate([-1-25*y-10,-1-25*y-10,-1]) cube([50*y+12,25*y+12,51]);
        translate([-1-25*y-10,-1,-1]) cube([25*y+12,25*y+11,51]);
      }
    } else {
      difference() {
        scale([1,y/x,1]) cylinder(7.5,25*x,25*x);
        translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(51,25*x-9.2,25*x-9.2);
        translate([-1-25*x,-1-25*x,-1]) cube([50*x+2,25*x+1,51]);
        translate([-1-25*x,-1,-1]) cube([25*x+1,25*x+1,51]);
      }
      difference() {
        translate([0,0,7.5]) scale([1,y/x,1]) cylinder(3.7,25*x-1,25*x-1);
        translate([0,0,-1]) scale([1,((25*y)-9.2)/((25*x)-9.2),1]) cylinder(20,(25*x)-9.2,(25*x)-9.2);
        translate([-1-25*x-10,-1-25*x-10,-1]) cube([50*x+22,25*x+12,51]);
        translate([-1-25*x-10,-1,-1]) cube([25*x+12,25*x+11,51]);
      }
    }
  }
}
//rotate([0,0,-90]) mirror() stone_edge_curved_base(3,2);

//stone_curved_base(4,4);
