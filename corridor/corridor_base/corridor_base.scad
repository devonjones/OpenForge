module corridor_base(x,y) {
  union() {
    translate([0,0,0]) cube([25*x,9.2,7.5]);
    translate([1,1,7.5]) cube([25*x-2,8.2,3]);

    translate([0,25*y-9.2,0]) cube([25*x,9.2,7.5]);
    translate([1,25*y-9.2,7.5]) cube([25*x-2,8.2,3]);
    difference() {
      import(str("../../floor_tile/stone_floor_",x,"x",y,".stl"));
      translate([-1,-1,-1]) cube([25*x+2,10.2,13]);
      translate([-1,25*y-9.2,-1]) cube([25*x+2,10.2,13]);
    }
  }
}

//corridor_base(4,4);

//  x=4;
//  y=3;
//  union() {
//    translate([0,0,0]) cube([25*x,9.2,7.5]);
//    translate([1,1,7.5]) cube([25*x-2,8.2,3]);
//
//    translate([0,25*y-9.2,0]) cube([25*x,9.2,7.5]);
//    translate([1,25*y-9.2,7.5]) cube([25*x-2,8.2,3]);
//    difference() {
//      translate([100,0,0]) rotate([0,0,90]) import(str("../../floor_tile/stone_floor_",y,"x",x,".stl"));
//      translate([-1,-1,-1]) cube([25*x+2,10.2,13]);
//      translate([-1,25*y-9.2,-1]) cube([25*x+2,10.2,13]);
//    }
//  }