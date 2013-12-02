module stone_floor_slate_load(f,x,y) {
  scale([12,12,3.3]) rotate([-26+x*90,y*90,0]) import(str("flooring_block_", f, ".stl"));
}

module stone_floor_slate(n) {
  if(floor(n/18) == 0) {
    gen_stone_floor_slate(n);
  } else if(floor(n/18) == 1) {
    translate([25,0,0]) rotate([0,0,90]) gen_stone_floor_slate(n%18);
  } else if(floor(n/18) == 2) {
    translate([25,25,0]) rotate([0,0,180]) gen_stone_floor_slate(n%18);
  } else if(floor(n/18) == 3) {
    translate([0,25,0]) rotate([0,0,270]) gen_stone_floor_slate(n%18);
  }
}

module gen_stone_floor_slate(n) {
  echo(n);
  if (n == 0) {
    translate([12.5,13.2,7.8]) scale([1.03,1.09,1.04]) stone_floor_slate_load(0,0,0);
  } else if (n == 1) {
    translate([12.5,13.05,7.8]) scale([1.03,1.13,1.11]) stone_floor_slate_load(0,1,0);
  } else if (n == 2) {
    translate([12.5,11.85,7.8]) scale([1.04,1.095,1.14]) stone_floor_slate_load(0,2,0);
  } else if (n == 3) {
    translate([12.5,11.95,7.8]) scale([1.04,1.13,1]) stone_floor_slate_load(0,3,0);
  } else if (n == 4) {
    translate([11.95,13.2,7.8]) scale([1.13,1.09,1]) stone_floor_slate_load(0,0,1);
  } else if (n == 5) {
    translate([13.05,13.2,7.8]) scale([1.13,1.09,1]) stone_floor_slate_load(0,0,-1);
  } else if (n == 6) {
    translate([12.45,13.35,7.8]) scale([1.03,1.04,1.01]) stone_floor_slate_load(1,0,0);
  } else if (n == 7) {
    translate([12.45,13.3,7.8]) scale([1.03,1.11,1.08]) stone_floor_slate_load(1,1,0);
  } else if (n == 8) {
    translate([12.45,11.65,7.8]) scale([1.04,1.05,1.15]) stone_floor_slate_load(1,2,0);
  } else if (n == 9) {
    translate([12.46,11.7,7.8]) scale([1.03,1.11,.94]) stone_floor_slate_load(1,3,0);
  } else if (n == 10) {
    translate([11.7,13.39,7.8]) scale([1.12,1.04,1]) stone_floor_slate_load(1,0,1);
  } else if (n == 11) {
    translate([13.35,13.34,7.8]) scale([1.12,1.04,.99]) stone_floor_slate_load(1,0,-1);
  } else if (n == 12) {
    translate([12.1,12.7,7.8]) scale([1,1.05,1.04]) stone_floor_slate_load(2,0,0);
  } else if (n == 13) {
    translate([12.1,12.4,7.8]) scale([1,1.07,1.03]) stone_floor_slate_load(2,1,0);
  } else if (n == 14) {
    translate([12.1,12.35,7.8]) scale([1,1.05,1.02]) stone_floor_slate_load(2,2,0);
  } else if (n == 15) {
    translate([12,12.6,7.8]) scale([0.99,1.07,1]) stone_floor_slate_load(2,3,0);
  } else if (n == 16) {
    translate([12.6,12.7,7.8]) scale([1.07,1.05,1]) stone_floor_slate_load(2,0,1);
  } else if (n == 17) {
    translate([12.35,12.68,7.8]) scale([1.07,1.06,0.93]) stone_floor_slate_load(2,0,-1);
  }
}

//stone_floor_slate(71);
//cube([25,25,7.5]); // test floor
//translate([0.05,0.05,7.5]) cube([24.9,24.9,3.6]); // boundary test

module stone_floor(x, y, seed=0) {
  tile_nums = rands(0,72,x*y,seed=seed);
  echo(tile_nums);

  union() {
    cube([25*x,25*y,7.5]);
    for (i = [0:x-1]) {
      for (j = [0:y-1]) {
        translate([25*i, 25*j, 0]) stone_floor_slate(floor(tile_nums[j*x+i]));
      }
    }
  }
}

module static_stone_floor(x, y, tiles) {
  union() {
    cube([25*x,25*y,7.5]);
    for (i = [0:x-1]) {
      for (j = [0:y-1]) {
        translate([25*i, 25*j, 0]) stone_floor_slate(tiles[j*x+i]);
      }
    }
  }
}

seed_vect = rands(0, 100, 2);
//stone_floor(2,1,seed=seed_vect[0]);
//static_stone_floor(1, 4, [64, 30, 71, 60]);
//static_stone_floor(2, 2, [17,7, 26,6]);
//static_stone_floor(2, 3, [24,35, 44,49, 25,30, 0,47]);
//static_stone_floor(2, 4, [1,9, 7,16, 11,0, 8,10]);
//static_stone_floor(3, 1, [56,50,31]);
//static_stone_floor(3, 2, [2,28,6, 51,45,41]);
//static_stone_floor(3, 3, [22,45,8, 66,70,35, 2,25,3]);
//static_stone_floor(3, 4, [55,39,17, 49,2,69, 64,18,23, 42,63,47]);
//static_stone_floor(4, 1, [36,70,41,28]);
//static_stone_floor(4, 2, [46,30,63,32, 53,31,24,52]);
//static_stone_floor(4, 3, [63,38,29,37, 53,6,16,12, 64,25,33,4]);
//static_stone_floor(4, 4, [48,18,39,47, 7,44,9,35, 69,10,42,59, 19,31,50,38]);