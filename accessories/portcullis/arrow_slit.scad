include <forge_lib.scad>

module arrow_slit() {
  difference() {
    union() {
      cube([50,25,40]);
      translate([24,0,0]) cube([2,30,24]);
    }
    translate([-1,25,24]) rotate([60.95,0,0]) cube([52,40,40]);
    translate([26,25,-1]) rotate([0,0,-50.19]) cube([50,42,40]);
    translate([24,25,-1]) rotate([0,0,90+50.19]) cube([50,42,40]);
  }
}

arrow_slit();
