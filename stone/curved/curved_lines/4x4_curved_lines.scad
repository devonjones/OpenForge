include <forge_lib.scad>

//141.057510146

module 4x4_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 30, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([141.057510146-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1,1,1]) rand_face(seed_vect[0]);
      translate([11,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([21,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([31,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([41,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([51,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([61,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([71,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([81,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([91,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([101,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([111,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([121,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([131,0,0]) scale([.9,1,1]) rand_face(seed_vect[13]);
    }
    translate([141.057510146,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.05,0,0]) scale([.9,1,1]) rand_face(seed_vect[14]);
      translate([10.05,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([20.05,0,0]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([30.05,0,0]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([40.05,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([50.05,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([60.05,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([70.05,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([80.05,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([90.05,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([100.05,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([110.05,0,0]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([120.05,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([130.05,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[28]);
    translate([141.057510146-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[29]);
  }
}
      
module 4x4_static_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([141.057510146-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1,1,1]) static_face(front[0]);
      translate([11,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([21,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([31,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([41,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([51,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([61,0,0]) scale([1,1,1]) static_face(front[6]);
      translate([71,0,0]) scale([1,1,1]) static_face(front[7]);
      translate([81,0,0]) scale([1,1,1]) static_face(front[8]);
      translate([91,0,0]) scale([1,1,1]) static_face(front[9]);
      translate([101,0,0]) scale([1,1,1]) static_face(front[10]);
      translate([111,0,0]) scale([1,1,1]) static_face(front[11]);
      translate([121,0,0]) scale([1,1,1]) static_face(front[12]);
      translate([131,0,0]) scale([.9,1,1]) static_face(front[13]);
    }
    translate([141.057510146,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.05,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([10.05,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([20.05,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([30.05,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([40.05,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([50.05,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([60.05,0,0]) scale([1,1,1]) static_face(back[6]);
      translate([70.05,0,0]) scale([1,1,1]) static_face(back[7]);
      translate([80.05,0,0]) scale([1,1,1]) static_face(back[8]);
      translate([90.05,0,0]) scale([1,1,1]) static_face(back[9]);
      translate([100.05,0,0]) scale([1,1,1]) static_face(back[10]);
      translate([110.05,0,0]) scale([1,1,1]) static_face(back[11]);
      translate([120.05,0,0]) scale([1,1,1]) static_face(back[12]);
      translate([130.05,0,0]) scale([1,1,1]) static_face(back[13]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([141.057510146-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 4x4_stagger_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 32, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([141.057510146-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
      translate([6,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([16,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([26,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([36,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([46,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([56,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([66,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([76,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([86,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([96,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([106,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([116,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([126,0,0]) scale([.9,1,1]) rand_face(seed_vect[13]);
      translate([135,0,0]) scale([.5,1,1]) rand_face(seed_vect[14]);
    }
    translate([141.057510146,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.05,0,0]) scale([.5,1,1]) rand_face(seed_vect[15]);
      translate([6.05,0,0]) scale([.9,1,1]) rand_face(seed_vect[16]);
      translate([15.05,0,0]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([25.05,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([35.05,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([45.05,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([55.05,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([65.05,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([75.05,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([85.05,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([95.05,0,0]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([105.05,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([115.05,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([125.05,0,0]) scale([1,1,1]) rand_face(seed_vect[28]);
      translate([135.05,0,0]) scale([.5,1,1]) rand_face(seed_vect[29]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[30]);
    translate([141.057510146-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[31]);
  }
}

module 4x4_static_stagger_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([141.057510146-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) static_face(front[0]);
      translate([6,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([16,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([26,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([36,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([46,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([56,0,0]) scale([1,1,1]) static_face(front[6]);
      translate([66,0,0]) scale([1,1,1]) static_face(front[7]);
      translate([76,0,0]) scale([1,1,1]) static_face(front[8]);
      translate([86,0,0]) scale([1,1,1]) static_face(front[9]);
      translate([96,0,0]) scale([1,1,1]) static_face(front[10]);
      translate([106,0,0]) scale([1,1,1]) static_face(front[11]);
      translate([116,0,0]) scale([1,1,1]) static_face(front[12]);
      translate([126,0,0]) scale([.9,1,1]) static_face(front[13]);
      translate([135,0,0]) scale([.5,1,1]) static_face(front[14]);
    }
    translate([141.057510146,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.05,0,0]) scale([.5,1,1]) static_face(back[0]);
      translate([6.05,0,0]) scale([.9,1,1]) static_face(back[1]);
      translate([15.05,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([25.05,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([35.05,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([45.05,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([55.05,0,0]) scale([1,1,1]) static_face(back[6]);
      translate([65.05,0,0]) scale([1,1,1]) static_face(back[7]);
      translate([75.05,0,0]) scale([1,1,1]) static_face(back[8]);
      translate([85.05,0,0]) scale([1,1,1]) static_face(back[9]);
      translate([95.05,0,0]) scale([1,1,1]) static_face(back[10]);
      translate([105.05,0,0]) scale([1,1,1]) static_face(back[11]);
      translate([115.05,0,0]) scale([1,1,1]) static_face(back[12]);
      translate([125.05,0,0]) scale([1,1,1]) static_face(back[13]);
      translate([135.05,0,0]) scale([.5,1,1]) static_face(back[14]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([141.057510146-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 4x4_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1,1,1]) rand_face(seed_vect[0]);
    translate([11,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([21,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([31,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([41,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([51,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([61,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
    translate([71,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([81,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
    translate([91,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
    translate([101,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
    translate([111,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
    translate([121,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
    translate([131,0,0]) scale([.9,1,1]) rand_face(seed_vect[13]);
  }
}

module 4x4_static_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1,1,1]) static_face(top[0]);
    translate([11,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([21,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([31,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([41,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([51,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([61,0,0]) scale([1,1,1]) static_face(top[6]);
    translate([71,0,0]) scale([1,1,1]) static_face(top[7]);
    translate([81,0,0]) scale([1,1,1]) static_face(top[8]);
    translate([91,0,0]) scale([1,1,1]) static_face(top[9]);
    translate([101,0,0]) scale([1,1,1]) static_face(top[10]);
    translate([111,0,0]) scale([1,1,1]) static_face(top[11]);
    translate([121,0,0]) scale([1,1,1]) static_face(top[12]);
    translate([131,0,0]) scale([.9,1,1]) static_face(top[13]);
  }
}

module 4x4_staggered_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 15, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
    translate([6,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([16,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([26,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([36,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([46,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([56,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
    translate([66,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([76,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
    translate([86,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
    translate([96,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
    translate([106,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
    translate([116,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
    translate([126,0,0]) scale([.9,1,1]) rand_face(seed_vect[13]);
    translate([135,0,0]) scale([.5,1,1]) rand_face(seed_vect[14]);
  }
}

module 4x4_static_staggered_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) static_face(top[0]);
    translate([6,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([16,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([26,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([36,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([46,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([56,0,0]) scale([1,1,1]) static_face(top[6]);
    translate([66,0,0]) scale([1,1,1]) static_face(top[7]);
    translate([76,0,0]) scale([1,1,1]) static_face(top[8]);
    translate([86,0,0]) scale([1,1,1]) static_face(top[9]);
    translate([96,0,0]) scale([1,1,1]) static_face(top[10]);
    translate([106,0,0]) scale([1,1,1]) static_face(top[11]);
    translate([116,0,0]) scale([1,1,1]) static_face(top[12]);
    translate([126,0,0]) scale([.9,1,1]) static_face(top[13]);
    translate([135,0,0]) scale([.5,1,1]) static_face(top[14]);
  }
}

//seed_vect = rands(0, 100, 2);
//4x4_curved_line(0, seed_vect[0]);
//4x4_stagger_curved_line(0, seed_vect[0]);
//translate([0,0,7]) 4x4_curved_top(seed_vect[0]);
//translate([0,0,7]) 4x4_staggered_curved_top(seed_vect[0]);
