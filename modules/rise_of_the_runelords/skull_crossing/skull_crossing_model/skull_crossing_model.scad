module tile() {
  translate([-75,0,0]) cube([150,25,7.5]);
  translate([-74,1,7.5]) cube([148,23,3.25]);
}

module keep() {
  union() {
    translate([-4,0,0]) cube([8,10.5,5]);
    translate([0,0,0]) scale([0.5,0.5,1]) cylinder(5,3,3);
    translate([0,10.5,0]) scale([0.5,0.5,1]) cylinder(5,3,3);
    translate([0,5.25,0]) scale([1,0.5,1]) cylinder(5,6,6);
    rotate([-55,0,0]) translate([-4,0,0]) cube([8,3,2]);
    translate([0,10.5,0]) rotate([-55,0,180]) translate([-4,0,0]) cube([8,3,2]);
    translate([0,-1,0]) rotate([-45,0,0]) translate([-1,0,0]) cube([2,3,2]);
    translate([0,11.5,0]) rotate([-45,0,180]) translate([-1,0,0]) cube([2,3,2]);
  }

  union() {
    translate([-2,3.25,5+1.75]) linear_extrude(height=3.5, center=true, convexity=10, slices = 20, scale=1.0)polygon(points=[[0,0],[4,0],[0,4]], paths=[[0,1,2]]);
    translate([-2,5.25,6.7]) rotate([-90,0,90]) scale([.05,.05,.05]) import("wall_skull.stl");
    translate([0,3.25,6.7]) rotate([-90,0,180]) scale([.05,.05,.05]) import("wall_skull.stl");
  }
  union() {
    translate([-2,3.25,5+1.75]) linear_extrude(height=3.5, center=true, convexity=10, slices = 20, scale=1.0)polygon(points=[[4,0],[4,4],[0,4]], paths=[[0,1,2]]);
    translate([0,7.25,6.7]) rotate([-90,0,0]) scale([.05,.05,.05]) import("wall_skull.stl");
    translate([2,5.25,6.7]) rotate([-90,0,270]) scale([.05,.05,.05]) import("wall_skull.stl");
  }
}

module dam() {
 difference() {
   union() {
     difference() {
       translate([0,-275,7]) cylinder(30,300,300);
       translate([0,-275,6]) cylinder(32,286,292);
     }
     difference() {
       translate([0,-275,37]) cylinder(1,300,300);
       translate([0,-275,36]) cylinder(3,299,299);
     }
     difference() {
       translate([0,-275,37]) cylinder(1,293,293);
       translate([0,-275,36]) cylinder(3,292,292);
     }
   }
   translate([75,-575,0]) cube([300,600,50]);
   translate([-375,-575,0]) cube([300,600,50]);
   translate([-150,-650,0]) cube([300,600,50]);
 }
}

union() {
  tile();
  union() {
    dam();
    translate([0,15,25]) rotate([-80,0,180]) scale([.25,.25,.25]) import("wall_skull.stl");
    translate([30,14.5,23]) rotate([-80,0,173]) scale([.2,.2,.2]) import("wall_skull.stl");
    translate([60,8.8,23]) rotate([-80,0,167]) scale([.2,.2,.2]) import("wall_skull.stl");
    translate([-30,14.5,23]) rotate([-80,0,186]) scale([.2,.2,.2]) import("wall_skull.stl");
    translate([-60,8.8,23]) rotate([-80,0,193]) scale([.2,.2,.2]) import("wall_skull.stl");
  }
  translate([0,14,37]) keep();
}