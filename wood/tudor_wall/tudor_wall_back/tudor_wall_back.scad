module wood_wall_back(x) {
  cube([25*x,9.2,7.5]);
  translate([0,0,7.5]) cube([25*x,8.2,3.7]);
  translate([0,0,11.2]) cube([25*x,8.2,37.8]);
  difference() {
    union() {
      for (i = [0:x-1]) {
        translate([25*i,0,11.2]) rotate([90,0,0]) scale([2/100, 37.8/1024, 1 / 256]) surface(file = str("wood/strip_0", i*2, ".dat"), convexity = 5);
        translate([25*i+23,0,11.2]) rotate([90,0,0]) scale([2/100, 37.8/1024, 1 / 256]) surface(file = str("wood/strip_0", i*2+1, ".dat"), convexity = 5);
      }
    }
    translate([25*(x-1)-1,-1.5,20]) cube([27,2,4]);
  }
  translate([0,-.3,20]) cube([25*x,.3,4]);
  for (i = [0:x-1]) {
    translate([25*i,-.3,24]) rotate([90,90,0]) scale([4/100, 25/1024, 1 / 256]) surface(file = str("wood/strip_0", 7+i, ".dat"), convexity = 5);
  }

  difference() {
    union() {
      for (i = [0:x-1]) {
        translate([25*i+2,8.2,7.4]) rotate([90,0,180]) scale([2/100, 41.6/1024, 1 / 256]) surface(file = str("wood/strip_1", i*2, ".dat"), convexity = 5);
        translate([25*i+25,8.2,7.4]) rotate([90,0,180]) scale([2/100, 41.6/1024, 1 / 256]) surface(file = str("wood/strip_1", i*2+1, ".dat"), convexity = 5);
      }
    }
    translate([-1,7.7,20]) cube([25*x+2,2,4]);
  }
  translate([0,8.2,20]) cube([25*x,.3,4]);
  for (i = [0:x-1]) {
  translate([25*i+25,8.5,24]) rotate([90,90,180]) scale([4/100, 25/1024, 1 / 256]) surface(file = str("wood/strip_1", 7+i, ".dat"), convexity = 5);
  }
}

wood_wall_back(1);