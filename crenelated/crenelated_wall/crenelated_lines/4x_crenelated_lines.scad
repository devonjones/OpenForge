include <forge_lib.scad>

module 4x_stagger_crenelated_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 20, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([5,8.2,7]);
    translate([15,0,0]) cube([10,8.2,7]);
    translate([35,0,0]) cube([10,8.2,7]);
    translate([55,0,0]) cube([10,8.2,7]);
    translate([75,0,0]) cube([10,8.2,7]);
    translate([94,0,0]) cube([5,8.2,7]);
    translate([1,0,0]) cube([98,8.2,0.5]);
    translate([0,-manifold,0]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([15,0,0]) rand_face(seed_vect[1]);
      translate([35,0,0]) rand_face(seed_vect[2]);
      translate([55,0,0]) rand_face(seed_vect[3]);
      translate([75,0,0]) rand_face(seed_vect[4]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[5]);
    }
    translate([100,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[6]);
      translate([15,0,0]) rand_face(seed_vect[7]);
      translate([35,0,0]) rand_face(seed_vect[8]);
      translate([55,0,0]) rand_face(seed_vect[9]);
      translate([75,0,0]) rand_face(seed_vect[10]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([99+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
    translate([0,0,7+manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[14]);
      translate([15,0,0]) rand_face(seed_vect[15]);
      translate([35,0,0]) rand_face(seed_vect[16]);
      translate([55,0,0]) rand_face(seed_vect[17]);
      translate([75,0,0]) rand_face(seed_vect[18]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[19]);
    }
  }
}

module 4x_static_stagger_crenelated_line(front, back, side, top, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([5,8.2,7]);
    translate([15,0,0]) cube([10,8.2,7]);
    translate([35,0,0]) cube([10,8.2,7]);
    translate([55,0,0]) cube([10,8.2,7]);
    translate([75,0,0]) cube([10,8.2,7]);
    translate([94,0,0]) cube([5,8.2,7]);
    translate([1,0,0]) cube([98,8.2,0.5]);
    translate([0,-manifold,0]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[0]);
      translate([15,0,0]) static_face(front[1]);
      translate([35,0,0]) static_face(front[2]);
      translate([55,0,0]) static_face(front[3]);
      translate([75,0,0]) static_face(front[4]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[5]);
    }
    translate([100,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(back[0]);
      translate([15,0,0]) static_face(back[1]);
      translate([35,0,0]) static_face(back[2]);
      translate([55,0,0]) static_face(back[3]);
      translate([75,0,0]) static_face(back[4]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(back[5]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([99+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
    translate([0,0,7+manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([6,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[0]);
      translate([15,0,0]) static_face(top[1]);
      translate([35,0,0]) static_face(top[2]);
      translate([55,0,0]) static_face(top[3]);
      translate([75,0,0]) static_face(top[4]);
      translate([99,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[5]);
    }
  }
}

//seed_vect = rands(0, 100, 2);
//4x_stagger_crenelated_line(0, seed_vect[0]);
