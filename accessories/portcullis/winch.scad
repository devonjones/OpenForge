module brace() {
  cube([18,2,3]);
  translate([0,2,0]) cube([2,1,3]);
  translate([16,2,0]) cube([2,1,3]);
  difference() {
    translate([18/2-1.5,0,0]) cube([3,17,3]);
    translate([18/2,13,-5]) rotate([0,0,0]) cylinder(15,1,1,$fn=20);
  }
  translate([2,2,0]) rotate([0,0,-45]) cube([2,10,2]);
  translate([16,2,2]) rotate([0,180,-45+90]) cube([2,10,2]);
}

module bobbin() {
  difference() {
    union() {
      cylinder(25-6,3,3,$fn=50);
      cylinder(1,6,6,$fn=50);
    }
    translate([0,0,-3]) cylinder(25,1,1,$fn=20);
    translate([0,0,16]) cylinder(25,2.5,2.5,$fn=20);
    translate([2,-.5,16]) cube([2,1,4]);
  }
}

module bobbin_lid() {
  difference() {
    cylinder(1,6,6,$fn=50);
    translate([0,0,-3]) cylinder(25,1,1,$fn=20);
  }
}

module lever() {
  translate([1,-.5,0]) cube([8,1,1]);
  translate([-9,-.5,0]) cube([8,1,1]);
  translate([-.5,1,0]) cube([1,8,1]);
  translate([-.5,-9,0]) cube([1,8,1]);
  difference() {
    rotate([0,0,45]) translate([-2,-2,0]) cube([4,4,1]);
    translate([0,0,-3]) cylinder(25,1,1,$fn=20);
  }
}

lever();
