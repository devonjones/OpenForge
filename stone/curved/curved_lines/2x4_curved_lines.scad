include <forge_lib.scad>

//105.456787

module 2x4_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 24, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([105.456787-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
      translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([30,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([50,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([60,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([70,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([80,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([90,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
      translate([99,0,0]) scale([.5,1,1]) rand_face(seed_vect[10]);
    }
    translate([105.456787,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.45,0,0]) scale([.5,1,1]) rand_face(seed_vect[11]);
      translate([6.45,0,0]) scale([.9,1,1]) rand_face(seed_vect[12]);
      translate([15.45,0,0]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([25.45,0,0]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([35.45,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([45.45,0,0]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([55.45,0,0]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([65.45,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([75.45,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([85.45,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([95.45,0,0]) scale([1.2,1,1]) rand_face(seed_vect[21]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[22]);
    translate([105.456787-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[23]);
  }
}
      
module 2x4_static_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([105.456787-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([10,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([20,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([30,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([40,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([50,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([60,0,0]) scale([1,1,1]) static_face(front[6]);
      translate([70,0,0]) scale([1,1,1]) static_face(front[7]);
      translate([80,0,0]) scale([1,1,1]) static_face(front[8]);
      translate([90,0,0]) scale([.9,1,1]) static_face(front[9]);
      translate([99,0,0]) scale([.5,1,1]) static_face(front[10]);
    }
    translate([105.456787,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.45,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([6.45,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([15.45,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([25.45,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([35.45,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([45.45,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([55.45,0,0]) scale([1,1,1]) static_face(back[6]);
      translate([65.45,0,0]) scale([1,1,1]) static_face(back[7]);
      translate([75.45,0,0]) scale([1,1,1]) static_face(back[8]);
      translate([85.45,0,0]) scale([1,1,1]) static_face(back[9]);
      translate([95.45,0,0]) scale([1.2,1,1]) static_face(back[10]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([105.456787-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 2x4_stagger_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 24, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([105.456787-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
      translate([15,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([25,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([35,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([45,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([55,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([65,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([75,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([85,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([95,0,0]) scale([.9,1,1]) rand_face(seed_vect[10]);
    }
    translate([105.456787,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.45,0,0]) scale([.9,1,1]) rand_face(seed_vect[11]);
      translate([10.45,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([20.45,0,0]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([30.45,0,0]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([40.45,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([50.45,0,0]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([60.45,0,0]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([70.45,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([80.45,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([90.45,0,0]) scale([.9,1,1]) rand_face(seed_vect[20]);
      translate([99.45,0,0]) scale([.8,1,1]) rand_face(seed_vect[21]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[22]);
    translate([105.456787-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[23]);
  }
}

module 2x4_static_stagger_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([105.456787-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) static_face(front[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face(front[1]);
      translate([15,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([25,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([35,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([45,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([55,0,0]) scale([1,1,1]) static_face(front[6]);
      translate([65,0,0]) scale([1,1,1]) static_face(front[7]);
      translate([75,0,0]) scale([1,1,1]) static_face(front[8]);
      translate([85,0,0]) scale([1,1,1]) static_face(front[9]);
      translate([95,0,0]) scale([.9,1,1]) static_face(front[10]);
    }
    translate([105.456787,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.45,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([10.45,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([20.45,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([30.45,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([40.45,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([50.45,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([60.45,0,0]) scale([1,1,1]) static_face(back[6]);
      translate([70.45,0,0]) scale([1,1,1]) static_face(back[7]);
      translate([80.45,0,0]) scale([1,1,1]) static_face(back[8]);
      translate([90.45,0,0]) scale([.9,1,1]) static_face(back[9]);
      translate([99.45,0,0]) scale([.8,1,1]) static_face(back[10]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([105.456787-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 2x4_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 9, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
    translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([30,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([50,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([60,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
    translate([70,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([80,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([90,0,0]) scale([.9,1,1]) rand_face(seed_vect[7]);
    translate([99,0,0]) scale([.5,1,1]) rand_face(seed_vect[7]);
  }
}

module 2x4_static_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) static_face(top[0]);
    translate([10,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([20,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([30,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([40,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([50,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([60,0,0]) scale([1,1,1]) static_face(top[6]);
    translate([70,0,0]) scale([1,1,1]) static_face(top[7]);
    translate([80,0,0]) scale([1,1,1]) static_face(top[8]);
    translate([90,0,0]) scale([.9,1,1]) static_face(top[9]);
    translate([99,0,0]) scale([.5,1,1]) static_face(top[10]);
  }
}

module 2x4_staggered_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 11, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
    translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
    translate([15,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([25,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([35,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([45,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([55,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
    translate([65,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([75,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
    translate([85,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
    translate([95,0,0]) scale([.9,1,1]) rand_face(seed_vect[10]);
  }
}

module 2x4_static_staggered_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) static_face(top[0]);
    translate([6,0,0]) scale([.9,1,1]) static_face(top[1]);
    translate([15,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([25,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([35,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([45,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([55,0,0]) scale([1,1,1]) static_face(top[6]);
    translate([65,0,0]) scale([1,1,1]) static_face(top[7]);
    translate([75,0,0]) scale([1,1,1]) static_face(top[8]);
    translate([85,0,0]) scale([1,1,1]) static_face(top[9]);
    translate([95,0,0]) scale([.9,1,1]) static_face(top[10]);
  }
}

//seed_vect = rands(0, 100, 2);
//2x4_curved_line(0, seed_vect[0]);
//2x4_stagger_curved_line(0, seed_vect[0]);
//translate([0,0,7]) 2x4_curved_top(seed_vect[0]);
//translate([0,0,7]) 2x4_staggered_curved_top(seed_vect[0]);
