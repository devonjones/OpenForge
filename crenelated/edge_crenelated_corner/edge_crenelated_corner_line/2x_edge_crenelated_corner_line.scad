include <forge_lib.scad>


module 2x_stagger_edge_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 32, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,6,7]);
    translate([0,17,0]) cube([8.2,11,7]);
    translate([0,39,0]) cube([8.2,10,7]);

    translate([0,49,0]) cube([18,8.2,7]);
    translate([29,49,0]) cube([11,8.2,7]);
    translate([51,49,0]) cube([6,8.2,7]);

    translate([0,0,0]) cube([8.2,49,0.5]);
    translate([0,49,0]) cube([49+8.2,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,6,7]) rotate([0,90,270]) scale([7/10,1,6/7]) rand_face(seed_vect[0]);
      translate([0,28,0]) rotate([0,0,270]) scale([1.1,1,1]) rand_face(seed_vect[1]);
      translate([0,57,0]) rotate([0,0,270]) scale([1.8,1,1]) rand_face(seed_vect[2]);
    }
    translate([0,49+8.2+manifold,0]) union() {
      translate([18,0,0]) rotate([0,0,180]) scale([1.8,1,1]) rand_face(seed_vect[3]);
      translate([40,0,0]) rotate([0,0,180]) scale([1.1,1,1]) rand_face(seed_vect[4]);
      translate([57,0,7]) rotate([0,90,180]) scale([7/10,1,6/7]) rand_face(seed_vect[5]);
    }
    translate([0,49-manifold,0]) union() {
      translate([6,0,0]) scale([1.2,1,1]) rand_face(seed_vect[6]);
      translate([29,0,0]) scale([1.1,1,1]) rand_face(seed_vect[7]);
      translate([51,0,7]) rotate([0,90,0])scale([7/10,1,6/7]) rand_face(seed_vect[8]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,6/7]) rand_face(seed_vect[9]);
      translate([0,17,0]) rotate([0,0,90]) scale([1.1,1,1]) rand_face(seed_vect[10]);
      translate([0,39,0]) rotate([0,0,90]) scale([1.2,1,1]) rand_face(seed_vect[11]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([49+8.2+manifold,49,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
  translate([0,49,7+manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([7,0,0]) scale([1.2,1,1]) rand_face(seed_vect[14]);
      translate([30,0,0]) scale([1.1,1,1]) rand_face(seed_vect[15]);
      translate([52,0,7]) rotate([0,90,0]) scale([7/10,1,6/7]) rand_face(seed_vect[16]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([1.2,1,1]) rand_face(seed_vect[17]);
      translate([0,-31,0]) rotate([-90,0,90]) scale([1.1,1,1]) rand_face(seed_vect[18]);
      translate([0,-42,0]) rotate([-90,0,180]) scale([7/10,1,6/7]) rand_face(seed_vect[19]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[20]);
  }

}

module 2x_static_stagger_edge_corner_line(back1, back2, interior1, interior2, side, top, manifold=-0.05) {

  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,6,7]);
    translate([0,17,0]) cube([8.2,11,7]);
    translate([0,39,0]) cube([8.2,10,7]);

    translate([0,49,0]) cube([18,8.2,7]);
    translate([29,49,0]) cube([11,8.2,7]);
    translate([51,49,0]) cube([6,8.2,7]);

    translate([0,0,0]) cube([8.2,49,0.5]);
    translate([0,49,0]) cube([49+8.2,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,6,7]) rotate([0,90,270]) scale([7/10,1,6/7]) static_face(back1[0]);
      translate([0,28,0]) rotate([0,0,270]) scale([1.1,1,1]) static_face(back1[1]);
      translate([0,57,0]) rotate([0,0,270]) scale([1.8,1,1]) static_face(back1[2]);
    }
    translate([0,49+8.2+manifold,0]) union() {
      translate([18,0,0]) rotate([0,0,180]) scale([1.8,1,1]) static_face(back2[0]);
      translate([40,0,0]) rotate([0,0,180]) scale([1.1,1,1]) static_face(back2[1]);
      translate([57,0,7]) rotate([0,90,180]) scale([7/10,1,6/7]) static_face(back2[2]);
    }
    translate([0,49-manifold,0]) union() {
      translate([6,0,0]) scale([1.2,1,1]) static_face(interior1[0]);
      translate([29,0,0]) scale([1.1,1,1]) static_face(interior1[1]);
      translate([51,0,7]) rotate([0,90,0])scale([7/10,1,6/7]) static_face(interior1[2]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,6/7]) static_face(interior2[0]);
      translate([0,17,0]) rotate([0,0,90]) scale([1.1,1,1]) static_face(interior2[1]);
      translate([0,39,0]) rotate([0,0,90]) scale([1.2,1,1]) static_face(interior2[2]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([49+8.2+manifold,49,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
  translate([0,49,7+manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([7,0,0]) scale([1.2,1,1]) static_face(top[0]);
      translate([30,0,0]) scale([1.1,1,1]) static_face(top[1]);
      translate([52,0,7]) rotate([0,90,0]) scale([7/10,1,6/7]) static_face(top[2]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([1.2,1,1]) static_face(top[3]);
      translate([0,-31,0]) rotate([-90,0,90]) scale([1.1,1,1]) static_face(top[4]);
      translate([0,-42,0]) rotate([-90,0,180]) scale([7/10,1,6/7]) static_face(top[5]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[6]);
  }
}

//seed_vect = rands(0, 100, 2);
//2x_stagger_edge_corner_line(0, seed_vect[0]);
2x_static_stagger_edge_corner_line(
  [23, 3, 27], [42, 18, 8],//[23, 3, 27], [42, 18, 48],
  [45, 39, 51], [0, 9, 11],
  [41, 26], [13, 21, 45, 2, 55, 30, 14]);
  
