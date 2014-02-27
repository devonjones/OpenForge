include <forge_lib.scad>

module 4x_stagger_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 45, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,14,0]) cube([8.2,9,7]);
    translate([0,33,0]) cube([8.2,10,7]);
    translate([0,53,0]) cube([8.2,10,7]);
    translate([0,73,0]) cube([8.2,10,7]);
    translate([0,93,0]) cube([8.2,6,7]);

    translate([0,99,0]) cube([14,8.2,7]);
    translate([24,99,0]) cube([10,8.2,7]);
    translate([44,99,0]) cube([10,8.2,7]);
    translate([64,99,0]) cube([10,8.2,7]);
    translate([84,99,0]) cube([9,8.2,7]);
    translate([102,99,0]) cube([5,8.2,7]);

    translate([0,0,0]) cube([8.2,99,0.5]);
    translate([0,99,0]) cube([99+8.2,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,23,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[1]);
      translate([0,43,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([0,63,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([0,83,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([0,107,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(seed_vect[5]);
    }
    translate([0,99+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) rand_face(seed_vect[6]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([54,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([74,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([93,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[10]);
      translate([107,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
    }
    translate([0,99-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([24,0,0]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([44,0,0]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([64,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([84,0,0]) scale([0.9,1,1]) rand_face(seed_vect[16]);
      translate([102,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) rand_face(seed_vect[17]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[18]);
      translate([0,14,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[19]);
      translate([0,33,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([0,53,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([0,73,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([0,93,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[23]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[24]);
    translate([99+8.2+manifold,99,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[25]);
  }

  translate([0,99,7+manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([5,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([25,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([45,0,0]) scale([1,1,1]) rand_face(seed_vect[28]);
      translate([65,0,0]) scale([1,1,1]) rand_face(seed_vect[29]);
      translate([85,0,0]) scale([0.9,1,1]) rand_face(seed_vect[30]);
      translate([103,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[31]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-5,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[32]);
      translate([0,-25,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[33]);
      translate([0,-45,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[34]);
      translate([0,-65,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[35]);
      translate([0,-84,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[36]);
      translate([0,-93,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) rand_face(seed_vect[37]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[38]);
  }
}

module 4x_static_stagger_corner_line(back1, back2, interior1, interior2, side, top, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,14,0]) cube([8.2,9,7]);
    translate([0,33,0]) cube([8.2,10,7]);
    translate([0,53,0]) cube([8.2,10,7]);
    translate([0,73,0]) cube([8.2,10,7]);
    translate([0,93,0]) cube([8.2,6,7]);

    translate([0,99,0]) cube([14,8.2,7]);
    translate([24,99,0]) cube([10,8.2,7]);
    translate([44,99,0]) cube([10,8.2,7]);
    translate([64,99,0]) cube([10,8.2,7]);
    translate([84,99,0]) cube([9,8.2,7]);
    translate([102,99,0]) cube([5,8.2,7]);

    translate([0,0,0]) cube([8.2,99,0.5]);
    translate([0,99,0]) cube([99+8.2,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,23,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[1]);
      translate([0,43,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[2]);
      translate([0,63,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[3]);
      translate([0,83,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[4]);
      translate([0,107,0]) rotate([0,0,270]) scale([1.4,1,1]) static_face(back1[5]);
    }
    translate([0,99+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) static_face(back2[0]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[1]);
      translate([54,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([74,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([93,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[4]);
      translate([107,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[5]);
    }
    translate([0,99-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([24,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([44,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([64,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([84,0,0]) scale([0.9,1,1]) static_face(interior1[4]);
      translate([102,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) static_face(interior1[5]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,14,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[1]);
      translate([0,33,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
      translate([0,53,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[3]);
      translate([0,73,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[4]);
      translate([0,93,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[5]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([99+8.2+manifold,99,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }

  translate([0,99,7+manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([5,0,0]) scale([1,1,1]) static_face(top[0]);
      translate([25,0,0]) scale([1,1,1]) static_face(top[1]);
      translate([45,0,0]) scale([1,1,1]) static_face(top[2]);
      translate([65,0,0]) scale([1,1,1]) static_face(top[3]);
      translate([85,0,0]) scale([0.9,1,1]) static_face(top[4]);
      translate([103,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[5]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-5,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[6]);
      translate([0,-25,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[7]);
      translate([0,-45,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[8]);
      translate([0,-65,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[9]);
      translate([0,-84,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[10]);
      translate([0,-93,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) static_face(top[11]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[12]);
  }
}

seed_vect = rands(0, 100, 2);
4x_stagger_corner_line(0, seed_vect[0]);
4x_static_stagger_corner_line(
  [55, 60, 2, 3, 28, 18], [12, 11, 46, 0, 7, 36],
  [62, 29, 1, 31, 61, 21], [52, 25, 17, 29, 19, 6],
  [24,1], [30, 12, 43, 45, 10, 36, 55, 18, 51, 31, 39, 7]);

