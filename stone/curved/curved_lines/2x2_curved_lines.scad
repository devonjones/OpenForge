include <forge_lib.scad>

//62.517693806

module 2x2_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([62.517693806-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1.1,1,1]) rand_face(seed_vect[0]);
      translate([12,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([22,0,0]) scale([1.1,1,1]) rand_face(seed_vect[2]);
      translate([33,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([43,0,0]) scale([1.1,1,1]) rand_face(seed_vect[4]);
      translate([54,0,0]) scale([.7,1,1]) rand_face(seed_vect[5]);
    }
    translate([62.517693806,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.7,1,1]) rand_face(seed_vect[6]);
      translate([8,0,0]) scale([1.1,1,1]) rand_face(seed_vect[7]);
      translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([29,0,0]) scale([1.1,1,1]) rand_face(seed_vect[9]);
      translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([50,0,0]) scale([1.1,1,1]) rand_face(seed_vect[11]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([62.517693806-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
}
      
module 2x2_static_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([62.517693806-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1.1,1,1]) static_face(front[0]);
      translate([12,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([22,0,0]) scale([1.1,1,1]) static_face(front[2]);
      translate([33,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([43,0,0]) scale([1.1,1,1]) static_face(front[4]);
      translate([54,0,0]) scale([.7,1,1]) static_face(front[5]);
    }
    translate([62.517693806,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.7,1,1]) static_face(back[0]);
      translate([8,0,0]) scale([1.1,1,1]) static_face(back[1]);
      translate([19,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([29,0,0]) scale([1.1,1,1]) static_face(back[3]);
      translate([40,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([51,0,0]) scale([1.1,1,1]) static_face(back[5]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([62.517693806-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 2x2_stagger_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([62.517693806-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.7,1,1]) rand_face(seed_vect[0]);
      translate([8,0,0]) scale([1.1,1,1]) rand_face(seed_vect[1]);
      translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([29,0,0]) scale([1.1,1,1]) rand_face(seed_vect[3]);
      translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([51,0,0]) scale([1.1,1,1]) rand_face(seed_vect[5]);
    }
    translate([62.517693806,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([1.1,1,1]) rand_face(seed_vect[6]);
      translate([12,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([22,0,0]) scale([1.1,1,1]) rand_face(seed_vect[8]);
      translate([33,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([43,0,0]) scale([1.1,1,1]) rand_face(seed_vect[10]);
      translate([54,0,0]) scale([.7,1,1]) rand_face(seed_vect[11]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([62.517693806-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
}

module 2x2_static_stagger_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([62.517693806-2,8.2,7]);
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.7,1,1]) static_face(front[0]);
      translate([8,0,0]) scale([1.1,1,1]) static_face(front[1]);
      translate([19,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([29,0,0]) scale([1.1,1,1]) static_face(front[3]);
      translate([40,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([51,0,0]) scale([1.1,1,1]) static_face(front[5]);
    }
    translate([62.517693806,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([1.1,1,1]) static_face(back[0]);
      translate([12,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([22,0,0]) scale([1.1,1,1]) static_face(back[2]);
      translate([33,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([43,0,0]) scale([1.1,1,1]) static_face(back[4]);
      translate([54,0,0]) scale([.7,1,1]) static_face(back[5]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([62.517693806-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 2x2_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 6, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1.1,1,1]) rand_face(seed_vect[0]);
    translate([12,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([22,0,0]) scale([1.1,1,1]) rand_face(seed_vect[2]);
    translate([33,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([43,0,0]) scale([1.1,1,1]) rand_face(seed_vect[4]);
    translate([54,0,0]) scale([.7,1,1]) rand_face(seed_vect[5]);
  }
}

module 2x2_static_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1.1,1,1]) static_face(top[0]);
    translate([12,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([22,0,0]) scale([1.1,1,1]) static_face(top[2]);
    translate([33,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([43,0,0]) scale([1.1,1,1]) static_face(top[2]);
    translate([54,0,0]) scale([.7,1,1]) static_face(top[3]);
  }
}

module 2x2_staggered_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 6, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.7,1,1]) rand_face(seed_vect[0]);
    translate([8,0,0]) scale([1.1,1,1]) rand_face(seed_vect[1]);
    translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([29,0,0]) scale([1.1,1,1]) rand_face(seed_vect[3]);
    translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([51,0,0]) scale([1.1,1,1]) rand_face(seed_vect[5]);
  }
}

module 2x2_static_staggered_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.7,1,1]) static_face(top[0]);
    translate([8,0,0]) scale([1.1,1,1]) static_face(top[1]);
    translate([19,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([29,0,0]) scale([1.1,1,1]) static_face(top[3]);
    translate([40,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([51,0,0]) scale([1.1,1,1]) static_face(top[3]);
  }
}

//seed_vect = rands(0, 100, 2);
//2x2_curved_line(0, seed_vect[0]);
//2x2_stagger_curved_line(0, seed_vect[0]);
//translate([0,0,7]) 2x2_curved_top(seed_vect[0]);
//translate([0,0,7]) 2x2_staggered_curved_top(seed_vect[0]);
