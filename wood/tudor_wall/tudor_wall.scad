module tudor_wall_base(x,y) {
  union() {
    translate([0,25*y-9.2,0]) cube([25*x,9.2,7.5]);
    translate([0,25*y-9.2,7.5]) cube([25*x,8.2,3.7]);
    import(str("wood_floor_base_",y,"x",x,".stl"));
      //translate([-1,25*y-9.2,-1]) cube([25*x+2,10.2,13]);
  }
}

//1.1*7+1*7+1*7+.7*7+.5*7+1.1*7 = 37.8
tudor_wall_base(1,1);
translate([0,25-9.2,7.5+3.7]) cube([25,8.2,37.8]);
difference() {
  union() {
    translate([0,25-9.2,11.2]) rotate([90,0,0]) scale([2/100, 37.8/1024, 1 / 256]) surface(file = str("wood/strip_00.dat"), convexity = 5);
    translate([23,25-9.2,11.2]) rotate([90,0,0]) scale([2/100, 37.8/1024, 1 / 256]) surface(file = str("wood/strip_01.dat"), convexity = 5);
  }
  translate([-1,25-9.2-2,20]) cube([27,2,4]);
}
translate([0,25-9.2-.3,20]) cube([25,.3,4]);
translate([0,25-9.5,24]) rotate([90,90,0]) scale([4/100, 25/1024, 1 / 256]) surface(file = str("wood/strip_08.dat"), convexity = 5);

difference() {
  union() {
    translate([2,25-1,7.5]) rotate([90,0,180]) scale([2/100, 41.5/1024, 1 / 256]) surface(file = str("wood/strip_10.dat"), convexity = 5);
    translate([25,25-1,7.5]) rotate([90,0,180]) scale([2/100, 41.5/1024, 1 / 256]) surface(file = str("wood/strip_11.dat"), convexity = 5);
  }
  translate([-1,25-1,20]) cube([27,2,4]);
}
translate([0,25-1,20]) cube([25,.3,4]);
translate([25,25-.7,24]) rotate([90,90,180]) scale([4/100, 25/1024, 1 / 256]) surface(file = str("wood/strip_18.dat"), convexity = 5);
