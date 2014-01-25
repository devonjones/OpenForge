include <../../../concrete/floor_tile/concrete_floor.scad>

module circle_floor() {
  intersection() {
    union() {
      translate([2,2,7.5]) scale([96/400, 96/400, 2/256]) surface(file = "MidhildaMagicCircle-inner.dat", convexity = 5);
      union() {
        cube([100,100,7.5]);
        translate([0,0,7.5]) cube([2,100,2]);
        translate([98,0,7.5]) cube([2,100,2]);
        translate([2,0,7.5]) cube([96,2,2]);
        translate([2,98,7.5]) cube([96,2,2]);
      }
    }
    union() {
      concrete_floor(4,4);
      translate([50,50,0]) cylinder(9.5,49,49);
    }
  }
}

module magic_circle() {
  union() {
    intersection() {
      circle_floor();
      union() {
        translate([50,50,-1]) cylinder(20,50,50);
        cube([100,50,20]);
      }
    }
    difference() {
      translate([50,50]) cylinder(49,59.2,59.2);
      translate([50,50,-1]) cylinder(51,50,50);
      translate([-10,-10,-1]) cube([120,60,51]);
    }
    translate([-9.2,0,0]) cube([9.2,50,49]);
    translate([100,0,0]) cube([9.2,50,49]);
  }
}

magic_circle();
//circle_floor();



