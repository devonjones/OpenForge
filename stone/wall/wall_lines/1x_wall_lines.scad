include <forge_lib.scad>

module 1x_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 6, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([23,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face(seed_vect[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face(seed_vect[1]);
    }
    translate([25,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([1.15,1,1]) rand_face(seed_vect[2]);
      translate([12.5,0,0]) scale([1.15,1,1]) rand_face(seed_vect[3]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[4]);
    translate([24+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[5]);
  }
}
      
module 1x_static_wall_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([23,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face(front[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face(front[1]);
    }
    translate([25,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([1.15,1,1]) static_face(back[0]);
      translate([12.5,0,0]) scale([1.15,1,1]) static_face(back[1]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([24+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x_stagger_wall_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 8, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([23,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face(seed_vect[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[2]);
    }
    translate([24.9,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[3]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face(seed_vect[4]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[5]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[6]);
    translate([24+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[7]);
  }
}

module 1x_static_stagger_wall_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([23,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(front[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) rand_face(front[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[2]);
    }
    translate([24.9,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(back[0]);
      translate([6.1,0,0]) scale([1.25,1,1]) static_face(back[1]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(back[2]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([24+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 2, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1.15,1,1]) rand_face(seed_vect[0]);
    translate([12.5,0,0]) scale([1.15,1,1]) rand_face(seed_vect[1]);
  }
}

module 1x_static_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1.15,1,1]) static_face(top[0]);
    translate([12.5,0,0]) scale([1.15,1,1]) static_face(top[1]);
  }
}

module 1x_staggered_wall_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 3, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
    translate([6,0,0]) scale([1.25,1,1]) rand_face(seed_vect[1]);
    translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[2]);
  }
}

module 1x_static_staggered_wall_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[0]);
    translate([6,0,0]) scale([1.25,1,1]) static_face(top[1]);
    translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[2]);
  }
}

//seed_vect = rands(0, 100, 2);
//1x_wall_line(0, seed_vect[0]);
//1x_stagger_wall_line(0, seed_vect[0]);
//translate([0,0,7]) 1x_wall_top(seed_vect[0]);
//translate([0,0,7]) 1x_staggered_wall_top(seed_vect[0]);
