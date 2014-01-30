include <forge_lib.scad>

module 2x_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 12, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([48,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
      translate([10,0,0]) rand_face(seed_vect[1]);
      translate([20,0,0]) rand_face(seed_vect[2]);
      translate([30,0,0]) rand_face(seed_vect[3]);
      translate([40,0,0]) scale([.9,1,1]) rand_face(seed_vect[4]);
    }
    translate([50,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[5]);
      translate([10,0,0]) rand_face(seed_vect[6]);
      translate([20,0,0]) rand_face(seed_vect[7]);
      translate([30,0,0]) rand_face(seed_vect[8]);
      translate([40,0,0]) scale([.9,1,1]) rand_face(seed_vect[9]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[10]);
    translate([49+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[11]);
  }
}
      
module 2x_static_wall_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([0.99,-0.01,-0.01]) cube([48.02,8.22,7.02]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([10,0,0]) static_face(front[1]);
      translate([20,0,0]) static_face(front[2]);
      translate([30,0,0]) static_face(front[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face(front[4]);
    }
    translate([50,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([10,0,0]) static_face(back[1]);
      translate([20,0,0]) static_face(back[2]);
      translate([30,0,0]) static_face(back[3]);
      translate([40,0,0]) scale([.9,1,1]) static_face(back[4]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([49+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 2x_stagger_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([0.99,-0.01,-0.01]) cube([48.02,8.22,7.02]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
      translate([15,0,0]) rand_face(seed_vect[2]);
      translate([25,0,0]) rand_face(seed_vect[3]);
      translate([35,0,0]) scale([.9,1,1]) rand_face(seed_vect[4]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[5]);
    }
    translate([50,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[6]);
      translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[7]);
      translate([15,0,0]) rand_face(seed_vect[8]);
      translate([25,0,0]) rand_face(seed_vect[9]);
      translate([35,0,0]) scale([.9,1,1]) rand_face(seed_vect[10]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([49+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
}

module 2x_static_stagger_wall_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([0.99,-0.01,-0.01]) cube([48.02,8.22,7.02]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(side[0]);
      translate([6,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([15,0,0]) static_face(front[1]);
      translate([25,0,0]) static_face(front[2]);
      translate([35,0,0]) scale([.9,1,1]) static_face(front[3]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(side[1]);
    }
    translate([50,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(side[2]);
      translate([6,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([15,0,0]) static_face(back[1]);
      translate([25,0,0]) static_face(back[2]);
      translate([35,0,0]) scale([.9,1,1]) static_face(back[3]);
      translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(side[3]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[4]);
    translate([49+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[5]);
  }
}

module 2x_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
    translate([10,0,0]) rand_face(seed_vect[1]);
    translate([20,0,0]) rand_face(seed_vect[2]);
    translate([30,0,0]) rand_face(seed_vect[3]);
    translate([40,0,0]) scale([.9,1,1]) rand_face(seed_vect[4]);
  }
}

module 2x_static_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) static_face(top[0]);
    translate([10,0,0]) static_face(top[1]);
    translate([20,0,0]) static_face(top[2]);
    translate([30,0,0]) static_face(top[3]);
    translate([40,0,0]) scale([.9,1,1]) static_face(top[4]);
  }
}

module 2x_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[6]);
    translate([6,0,0]) scale([.9,1,1]) rand_face(seed_vect[7]);
    translate([15,0,0]) rand_face(seed_vect[8]);
    translate([25,0,0]) rand_face(seed_vect[9]);
    translate([35,0,0]) scale([.9,1,1]) rand_face(seed_vect[10]);
    translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
  }
}

module 2x_static_staggered_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[0]);
    translate([6,0,0]) scale([.9,1,1]) static_face(top[1]);
    translate([15,0,0]) static_face(top[2]);
    translate([25,0,0]) static_face(top[3]);
    translate([35,0,0]) scale([.9,1,1]) static_face(top[4]);
    translate([49,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[5]);
  }
}

//seed_vect = rands(0, 100, 2);
//2x_wall_line(0, seed_vect[0]);
//2x_stagger_wall_line(0, seed_vect[0]);
//2x_wall_top(seed_vect[0]);
//2x_staggered_wall_top(seed_vect[0]);
