include <forge_lib.scad>

module 1x_stagger_crenelated_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 8, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([5,8.2,7]);
    translate([19,0,0]) cube([5,8.2,7]);
    translate([1,0,0]) cube([23,8.2,.5]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[1]);
    }
    translate([24.9,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[2]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[3]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[4]);
    translate([24+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[5]);
    translate([0,0,7+manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[6]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[7]);
    }
  }
}

module 1x_static_stagger_crenelated_line(front, back, side, top, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([5,8.2,7]);
    translate([19,0,0]) cube([5,8.2,7]);
    translate([1,0,0]) cube([23,8.2,.5]);
    translate([0,-manifold,0]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(front[0]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[1]);
    }
    translate([24.9,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(back[0]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(back[1]);
    }
    translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([24+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
    translate([0,0,7+manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[0]);
      translate([23.8,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(top[1]);
    }
  }
}

//seed_vect = rands(0, 100, 2);
//1x_stagger_crenelated_line(0, seed_vect[0]);
