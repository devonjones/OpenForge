include <forge_lib.scad>

//45.169099

module 1x2_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([45.169099-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
      translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([30,0,0]) scale([.9,1,1]) rand_face(seed_vect[3]);
      translate([39,0,0]) scale([.5,1,1]) rand_face(seed_vect[5]);
    }
    translate([45.169099,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[6]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[7]);
      translate([15,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([25,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([35,0,0]) scale([1.2,1,1]) rand_face(seed_vect[10]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([45.169099-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
}
      
module 1x2_static_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([45.169099-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([10,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([20,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([30,0,0]) scale([.9,1,1]) static_face(front[3]);
      translate([39,0,0]) scale([.5,1,1]) static_face(front[5]);
    }
    translate([45.169099,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.5,1,1]) static_face(back[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face(back[1]);
      translate([15,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([25,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([35,0,0]) scale([1.2,1,1]) static_face(back[4]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([45.169099-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x2_stagger_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([45.169099-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
      translate([15,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([25,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([35,0,0]) scale([.9,1,1]) rand_face(seed_vect[4]);
    }
    translate([45.169099,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[6]);
      translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([30,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
      translate([39,0,0]) scale([.8,1,1]) rand_face(seed_vect[10]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([45.169099-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
}

module 1x2_static_stagger_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([45.169099-2,8.2,7]);
    difference() {
      translate([-2,0,0]) cube([3,8.2,7]);
      translate([1,0,-1]) rotate([0,0,20.09523119190482+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) static_face(front[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face(front[1]);
      translate([15,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([25,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([35,0,0]) scale([.9,1,1]) static_face(front[4]);
    }
    translate([45.169099,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([10,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([20,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([30,0,0]) scale([.9,1,1]) static_face(back[3]);
      translate([39,0,0]) scale([.8,1,1]) static_face(back[4]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([45.169099-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x2_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 6, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
    translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([30,0,0]) scale([.9,1,1]) rand_face(seed_vect[3]);
    translate([39,0,0]) scale([.5,1,1]) rand_face(seed_vect[4]);
  }
}

module 1x2_static_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) static_face(top[0]);
    translate([10,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([20,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([30,0,0]) scale([.9,1,1]) static_face(top[2]);
    translate([39,0,0]) scale([.5,1,1]) static_face(top[2]);
  }
}

module 1x2_staggered_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 6, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
    translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
    translate([15,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([25,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([35,0,0]) scale([.9,1,1]) rand_face(seed_vect[4]);
  }
}

module 1x2_static_staggered_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) static_face(top[0]);
    translate([6,0,0]) scale([.9,1,1]) static_face(top[1]);
    translate([15,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([25,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([35,0,0]) scale([.9,1,1]) static_face(top[3]);
  }
}

//seed_vect = rands(0, 100, 2);
//1x2_curved_line(0, seed_vect[0]);
//1x2_stagger_curved_line(0, seed_vect[0]);
//translate([0,0,7]) 1x2_curved_top(seed_vect[0]);
//translate([0,0,7]) 1x2_staggered_curved_top(seed_vect[0]);
