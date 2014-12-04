include <forge_lib.scad>

module edge_wall_base(x,y) {
  union() {
    translate([1,1,7.5]) cube([25*x-2,8.2,3.7]);
    translate([1,9.2,7.5]) cube([8.2,8.2,3.7]);
    translate([25-9.2,9.2,7.5]) cube([8.2,8.2,3.7]);

    translate([1,1,11.2]) union() {
      translate([0,0,0]) cube([25*x-2,8.2,7.7]);
      translate([0,8.2,0]) cube([8.2,8.2,7.7]);
      translate([25-10.2,8.2,0]) cube([8.2,8.2,7.7]);

      // Outside
      translate([0,0.05,0]) rotate([0,0,0]) scale([.8,1,1.1]) static_face(17);
      translate([8,0.05,0]) scale([1,1,1.1]) static_face(1);
      translate([18,0.05,0]) scale([1,1,1.1]) static_face(41);
      translate([28,0.05,0]) scale([1,1,1.1]) static_face(59);
      translate([38,0.05,0]) scale([1,1,1.1]) static_face(38);

      // Front
      translate([0.05,16.5,0]) rotate([0,0,270]) scale([1.65,1,1.1]) static_face(5);

      // Back
      translate([47.95,0,0]) rotate([0,0,90]) scale([.82,1,1.1]) static_face(51);
      translate([22.95,8.2,0]) rotate([0,0,90]) scale([.82,1,1.1]) static_face(61);

      // Inside
      translate([8.2,16.35,0]) rotate([0,0,180]) scale([.82,1,1.1]) static_face(12);
      translate([23,16.35,0]) rotate([0,0,180]) scale([.82,1,1.1]) static_face(0);
      translate([28,8.15,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(43);
      translate([38,8.15,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(56);
      translate([48,8.15,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(11);
    }

    translate([1,25*y-9.2,7.5]) cube([25*x-2,8.2,3.7]);
    translate([1,25*y-9.2-8.2,7.5]) cube([8.2,8.2,3.7]);
    translate([25-9.2,25*y-9.2-8.2,7.5]) cube([8.2,8.2,3.7]);

    translate([1,25*y-9.2-8.2,11.2]) union() {
      translate([0,8.2,0]) cube([25*x-2,8.2,7.7]);
      translate([0,0,0]) cube([8.2,8.2,7.7]);
      translate([25-10.2,0,0]) cube([8.2,8.2,7.7]);

      // Outside
      translate([8,16.35,0]) rotate([0,0,180]) scale([.8,1,1.1]) static_face(12);
      translate([18,16.35,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(19);
      translate([28,16.35,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(59);
      translate([38,16.35,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(11);
      translate([48,16.35,0]) rotate([0,0,180]) scale([1,1,1.1]) static_face(26);


      // Front
      translate([0.05,16.5,0]) rotate([0,0,270]) scale([1.65,1,1.1]) static_face(45);

      // Back
      translate([47.95,8.2,0]) rotate([0,0,90]) scale([.82,1,1.1]) static_face(26);
      translate([22.95,0,0]) rotate([0,0,90]) scale([.82,1,1.1]) static_face(17);

      // Inside
      translate([0,0.05,0]) rotate([0,0,0]) scale([.82,1,1.1]) static_face(40);
      translate([14.8,0.05,0]) rotate([0,0,0]) scale([.82,1,1.1]) static_face(46);
      translate([38,8.25,0]) rotate([0,0,0]) scale([1,1,1.1]) static_face(1);
      translate([28,8.25,0]) rotate([0,0,0]) scale([1,1,1.1]) static_face(20);
      translate([18,8.25,0]) rotate([0,0,0]) scale([1,1,1.1]) static_face(11);
    }

    import(str("../../stone/floor_tile/stone_floor_",x,"x",y,".stl"));
  }
}

edge_wall_base(2,4);

