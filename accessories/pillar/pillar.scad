union() {
  translate([-12.5, -12.5, 0]) cube([25,25,2.5]);
  hull() {
    translate([-11.25, -11.25, 2.5]) cube([22.5, 22.5, 1.3]);
    translate([-10, -10, 3.8]) cube([20, 20, 1.3]);
  }
  hull() {
    translate([0,0,5.1]) cylinder(1.6,9.2,9.2);
    translate([0,0,6.7]) cylinder(1.5,8,8); // 8.2
  }

  translate([0,0,8.2]) cylinder(1,7.25,7.25);
  translate([0,0,9.2]) cylinder(22,6,6);
  translate([0,0,31.2]) cylinder(1,7.25,7.25);
  translate([0,0,32.2]) cylinder(4,6,8.25); //36.2
  rotate([0,0,45]) union() {
    translate([-10,-10,36.2]) intersection() {
      cube([20, 20, 1.6]);
      translate([10,-24.04163056/2+10,0]) rotate([0,0,45]) cube([17,17,1.6]);  
    }
    translate([-11,-11,37.8]) intersection() {
      cube([22, 22, 1]);
      translate([11,-26.870057685/2+11,0]) rotate([0,0,45]) cube([19,19,1]);  
    }
  }
} //total 38.8
