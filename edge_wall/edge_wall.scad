module base_edge_wall_1x1() {
  union() {
    translate([0,25,0]) cube([25,10.2,7.5]);
    translate([1,26,7.5]) cube([23,8.2,3]);
    import("../floor_tile/stone_floor_1x1.stl");
  }
}

module base_edge_wall_2x1() {
  union() {
    translate([0,25,0]) cube([50,10.2,7.5]);
    translate([1,26,7.5]) cube([48,8.2,3]);
    import("../floor_tile/stone_floor_2x1.stl");
  }
}

module base_edge_wall_4x1() {
  union() {
    translate([0,25,0]) cube([100,10.2,7.5]);
    translate([1,26,7.5]) cube([98,8.2,3]);
    import("../floor_tile/stone_floor_4x1.stl");
  }
}

module base_edge_wall_1x2() {
  union() {
    translate([0,50,0]) cube([25,10.2,7.5]);
    translate([1,51,7.5]) cube([23,8.2,3]);
    import("../floor_tile/stone_floor_1x2.stl");
  }
}

module base_edge_wall_2x2() {
  union() {
    translate([0,50,0]) cube([50,10.2,7.5]);
    translate([1,51,7.5]) cube([48,8.2,3]);
    import("../floor_tile/stone_floor_2x2.stl");
  }
}

module edge_wall(x,y) {
  union() {
    import(str("base_edge_wall_",x,"x",y,".stl"));
    translate([0,25*y,10.5]) union() {
      translate([0,0,0]) scale([1,1,1.2]) import(str("wall_parts/",x,"x_l1-wall_part_1.stl"));
      translate([0,0,8.4]) scale([1,1,1]) import(str("wall_parts/",x,"x_l1-staggered_wall_part_1.stl"));
      translate([0,0,15.4]) scale([1,1,1]) import(str("wall_parts/",x,"x_l1-wall_part_2.stl"));
      translate([0,0,22.4]) scale([1,1,.7]) import(str("wall_parts/",x,"x_l1-staggered_wall_part_2.stl"));
      translate([0,0,27.3]) scale([1,1,.5]) import(str("wall_parts/",x,"x_l1-wall_part_3.stl"));
      translate([0,0,30.8]) scale([1,1,7.7/7]) import(str("wall_parts/",x,"x_l1-staggered_wall_part_top.stl"));
    }
  }
}

//edge_wall(2,1);
