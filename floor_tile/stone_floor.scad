module stone_floor_slate(f,x,y) {
  scale([12,12,3.3]) rotate([-26+x*90,y*90,0]) import(str("flooring_block_", f, ".stl"));
}

module stone_floor_1x1() {
  union() {
    cube([25,25,7.5]);
    translate([12.5,13,7.8]) scale([1,1.04,1]) stone_floor_slate(0,0,0);
  }
}

module stone_floor_1x2() {
  union() {
    cube([50,25,7.5]);
    translate([12.5,13,7.8]) scale([1,1.04,1]) stone_floor_slate(2,0,0);
    translate([12.1+25,12.5,7.8]) scale([1.0,1.05,1]) stone_floor_slate(2,1,0);
  }
}

module stone_floor_1x4() {
  union() {
    cube([100,25,7.5]);
    translate([12.6,12.7,7.8]) scale([1.05,1.02,1]) stone_floor_slate(2,0,1);
    translate([12.5+25,12.7,7.8]) scale([1.05,1.03,1]) stone_floor_slate(2,0,3);
    translate([12.6+50,12.4,7.8]) scale([1.03,1.03,1]) stone_floor_slate(2,1,1);
    translate([12+75,12.5,7.8]) scale([1.0,1.04,1]) stone_floor_slate(2,2,0);
  }
}

module stone_floor_2x2() {
  union() {
    cube([50,50,7.5]);
    translate([12.4,13.7,7.8]) scale([1,1.04,1]) stone_floor_slate(1,0,0);
    translate([12.45+25,13.4,7.8]) scale([1.04,1.12,1]) stone_floor_slate(1,1,0);
    translate([11.75+25,13.45+25,7.8]) scale([1.11,1.04,1]) stone_floor_slate(1,0,1);
    translate([13.35,13.2+25,7.8]) scale([1.04,1.125,1]) stone_floor_slate(1,1,1);
  }
}

stone_floor_1x4();
