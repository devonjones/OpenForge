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
  translate([0,0,32.2]) cylinder(4,7.25,8.25); //36.2
  hull() {
    translate([-8.25,-8.25,36.2]) intersection() {
      cube([16.5, 16.5, 1.6]);
      translate([0,-24.04163056/2,0]) rotate([0,0,45]) translate([24.04163056/2,0,0]) cube([17,17,1.6]);  
    }
    translate([-9.25,-9.25,37.8]) intersection() {
      cube([18.5, 18.5, 1]);
      translate([0,-26.870057685/2,0]) rotate([0,0,45]) translate([26.870057685/2,0,0]) cube([19,19,1]);  
    }
  } //total 38.8
}
