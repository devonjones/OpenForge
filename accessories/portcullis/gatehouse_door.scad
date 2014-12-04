include <forge_lib.scad>

module door() {
  translate([-10.8, 20, 4]) rotate([0,90,0]) cylinder(66,1.8,1.8,$fn=20);
  translate([-10.8, 98.4, 4]) rotate([0,90,0])  cylinder(66,1.8,1.8,$fn=20);

  intersection() {
    union() {
      translate([-5.5,17.6,2]) cube([100.15,83.2,2]);
      translate([-5.5,20,2]) cube([100.15,78.4,4]);
      translate([-5.5,20,5.9]) cube([4,78.4,0.5]);
      translate([-5.5+20,20,5.9]) cube([4,78.4,0.5]);
      translate([-5.5+40,20,5.9]) cube([4,78.4,0.5]);
      translate([-5.5,20,5.9]) cube([100.15,4,0.5]);
      translate([-5.5,94.4,5.9]) cube([100.15,4,0.5]);
      translate([-5.5,54.7,5.9]) cube([100.15,9,0.5]);

      for (i = [1 : 5]) {
        translate([-5.5,55.2-5.5*i,5.9]) cube([100.15,1,0.3]);
        translate([-5.5,55.2+7+5.5*i,5.9]) cube([100.15,1,0.3]);
        translate([-5.5,55.2-5.5*i,1.8]) cube([100.15,1,0.3]);
        translate([-5.5,55.2+7+5.5*i,1.8]) cube([100.15,1,0.3]);

        translate([-3.5,55.7-5.5*i,1.4]) cylinder(5.2,.5,.5, $fn=20);
        translate([-3.5,55.2+7.5+5.5*i,1.4]) cylinder(5.2,.5,.5, $fn=20);

        translate([-3.5+20,55.7-5.5*i,1.4]) cylinder(5.2,.5,.5, $fn=20);
        translate([-3.5+20,55.2+7.5+5.5*i,1.4]) cylinder(5.2,.5,.5, $fn=20);

        translate([-3.5+40,55.7-5.5*i,1.4]) cylinder(5.2,.5,.5, $fn=20);
        translate([-3.5+40,55.2+7.5+5.5*i,1.4]) cylinder(5.2,.5,.5, $fn=20);
      }
      translate([-5.5+69.5,55.7-5.5,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+69.5,55.2+7.5+5.5,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+67.5,55.7-11,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+67.5,55.2+7.5+11,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+65,55.7-16.5,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+65,55.2+7.5+16.5,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+62,55.7-22,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+62,55.2+7.5+22,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+58.5,55.7-27.5,1.4]) cylinder(5.2,.5,.5, $fn=20);
      translate([-5.5+58.5,55.2+7.5+27.5,1.4]) cylinder(5.2,.5,.5, $fn=20);

      for (i = [0 : 15]) {
        translate([-3.5+5*i,55.2+2,1.4]) cylinder(5.2,.5,.5, $fn=20);
        translate([-3.5+5*i,55.2+6,1.4]) cylinder(5.2,.5,.5, $fn=20);
      }

      for (i = [0 : 10]) {
        translate([-3.5+5*i,19.6,1.4]) cylinder(.3,.5,.5, $fn=20);
        translate([-3.5+5*i,17.6+83.2-2,1.4]) cylinder(.3,.5,.5, $fn=20);
        translate([-3.5+5*i,22,6.2]) cylinder(.3,.5,.5, $fn=20);
        translate([-3.5+5*i,20+78.4-2,6.2]) cylinder(.3,.5,.5, $fn=20);
      }

      // Back
      translate([-5.5,17.6,1.6]) cube([4,83.2,0.5]);
      translate([-5.5+20,17.6,1.6]) cube([4,83.2,0.5]);
      translate([-5.5+40,17.6,1.6]) cube([4,83.2,0.5]);
      translate([-5.5,17.6,1.6]) cube([100.15,4,0.5]);
      translate([-5.5,96.8,1.6]) cube([100.15,4,0.5]);
      translate([-5.5,55.2,1.6]) cube([100.15,8,0.5]);

      difference() {
        union() {
          translate([-7.5,17.6,1.6]) cube([100.15,83.2,2.4]);
          translate([-7.5,20,1.6]) cube([100.15,78.4,4.8]);
          translate([-7.5,20,1.6]) cube([100.15,78.4,4.8]);
        }
        intersection() {
          translate([58.95-sqrt((85.6*85.6)/2)-11.2-2.5-4,16.4+sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
          translate([58.95-sqrt((85.6*85.6)/2)-11.2-2.5-4,16.4+85.6-sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
        }
      }
    }
    translate([58.95-sqrt((85.6*85.6)/2)-11.2-2.5,16.4+sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
    translate([58.95-sqrt((85.6*85.6)/2)-11.2-2.5,16.4+85.6-sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
  }
}

//door();
// Section 1
/*
rotate([180,0,0]) intersection() {
  door();
  translate([-20,0,0]) cube([100,55.2+4-.5,4]);
}
*/
// Section 2
/*
rotate([180,0,0]) intersection() {
  door();
  translate([-20,55.2+4+.5,0]) cube([100,55.2+4-.5,4]);
}
*/
// Section 3
/*
intersection() {
  door();
  translate([-20,0,4.001]) cube([100,55.2+4-.5,4]);
}
*/
// Section 4

intersection() {
  door();
  translate([-20,55.2+4+.5,4.001]) cube([100,55.2+4-.5,4]);
}


