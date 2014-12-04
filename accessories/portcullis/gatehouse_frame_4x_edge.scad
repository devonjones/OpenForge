include <forge_lib.scad>

module frame_rect(x,y,l,r,f,b) {
  difference() {
    union() {
      translate([-l,-f,0]) cube([25*x+r+l-1,25*y+f+b+10.2+10.2,7.5]);
    }
    translate([3.6+4.6,3.6,-0.1]) cube([25*x-8.2-4.6,25*y-7.2+10.2+10.2,10]);
    for(i = [0 : x-1]) {
      translate([12.5+i*25-1,-5,3.75]) rotate([270,0,0]) cylinder(41*y,.75,.75,$fn=50);
      translate([12.5+i*25-1,3.6,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
      translate([12.5+i*25-1,25*y-3.6+10.2+10.2,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
    }
    for(i = [0 : y-1]) {
      translate([10,12.5+i*25+10.2,3.75]) rotate([0,90,0]) cylinder(31*x,.75,.75,$fn=50);
      translate([25*x-4.6,12.5+i*25+10.2,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
    }
  }
}

module frame_square(x,y,l,r,f,b) {
  difference() {
    union() {
      translate([-l,-f,0]) cube([25*x+r+l,25*y+f+b,7.5]);
    }
    translate([3.6,3.6,-0.1]) cube([25*x-7.2,25*y-7.2,10]);
    for(i = [0 : x-1]) {
      translate([12.5+i*25,-5,3.75]) rotate([270,0,0]) cylinder(31*y,.75,.75,$fn=50);
      translate([12.5+i*25,3.6,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
      translate([12.5+i*25,25*y-3.6,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
    }
    for(i = [0 : y-1]) {
      translate([-5,12.5+i*25,3.75]) rotate([0,90,0]) cylinder(31*x,.75,.75,$fn=50);
      translate([3.6,12.5+i*25,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
      translate([25*x-3.6,12.5+i*25,-.1]) rotate([0,0,0]) cylinder(3.85,.75,.75,$fn=50);
    }
  }
}

//translate([0,0,-11.2-7.7]) import("gatehouse_floor_4x_edge.stl");

translate([1,0,0]) frame_rect(2,4,0,0,0,0);
translate([1.05,10,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(21);
translate([1.05,20,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(19);
translate([1.05,30,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(54);
translate([1.05,40,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(11);
translate([1.05,50,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(26);
translate([1.05,60,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(45);
translate([1.05,70,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(25);
translate([1.05,80,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(16);
translate([1.05,90,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(40);
translate([1.05,100,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(46);
translate([1.05,110,0]) rotate([0,0,-90]) scale([1,1,1.05]) static_face(1);
translate([1.05,120.4,0]) rotate([0,0,-90]) scale([1.05,1,1.05]) static_face(20);
translate([25-9.2,0,0]) cube([8.2,100+8.2+9.2,7.5]);

//translate([0,10.2,0]) frame_square(2,4,0,0,0,0); 

