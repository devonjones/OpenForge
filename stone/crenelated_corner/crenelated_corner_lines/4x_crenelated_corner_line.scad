include <forge_lib.scad>

module 4x_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 42, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,13,0]) cube([8.2,10,7]);
    translate([0,32,0]) cube([8.2,10,7]);
    translate([0,51,0]) cube([8.2,10,7]);
    translate([0,70,0]) cube([8.2,10,7]);
    translate([0,88,0]) cube([8.2,3,7]);

    translate([0,89.8,0]) cube([10,8.2,7]);
    translate([19,89.8,0]) cube([10,8.2,7]);
    translate([38,89.8,0]) cube([10,8.2,7]);
    translate([57,89.8,0]) cube([10,8.2,7]);
    translate([75,89.8,0]) cube([10,8.2,7]);
    translate([93,89.8,0]) cube([5,8.2,7]);

    translate([0,0,0]) cube([8.2,89.8,0.5]);
    translate([0,89.8,0]) cube([98,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,23,0]) rotate([0,0,270]) rand_face(seed_vect[1]);
      translate([0,42,0]) rotate([0,0,270]) rand_face(seed_vect[2]);
      translate([0,61,0]) rotate([0,0,270]) rand_face(seed_vect[3]);
      translate([0,80,0]) rotate([0,0,270]) rand_face(seed_vect[4]);
      translate([0,98,0]) rotate([0,0,270]) rand_face(seed_vect[5]);
    }
    translate([0,98+manifold,0]) union() {
      translate([10,0,0]) rotate([0,0,180]) rand_face(seed_vect[6]);
      translate([29,0,0]) rotate([0,0,180]) rand_face(seed_vect[7]);
      translate([48,0,0]) rotate([0,0,180]) rand_face(seed_vect[8]);
      translate([67,0,0]) rotate([0,0,180]) rand_face(seed_vect[9]);
      translate([85,0,0]) rotate([0,0,180]) rand_face(seed_vect[10]);
      translate([98,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
    }
    translate([0,89.8-manifold,0]) union() {
      translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([38,0,0]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([57,0,0]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([75,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([93,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) rand_face(seed_vect[16]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[17]);
      translate([0,13,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([0,32,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([0,51,0]) rotate([0,0,90]) rand_face(seed_vect[20]);
      translate([0,70,0]) rotate([0,0,90]) rand_face(seed_vect[21]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[22]);
    translate([98+manifold,89.8,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[23]);

    translate([0,89.8,7]) union() {
      translate([0,0,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
        translate([0,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
        translate([19,0,0]) rand_face(seed_vect[25]);
        translate([38,0,0]) rand_face(seed_vect[26]);
        translate([57,0,0]) rand_face(seed_vect[27]);
        translate([75,0,0]) rand_face(seed_vect[28]);
        translate([93,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[29]);
      }
      translate([8.2,0,manifold]) scale([8.2/7,1,1]) union () {
        translate([0,-1.8,0]) rotate([-90,0,90]) rand_face(seed_vect[30]);
        translate([0,-19.8,0]) rotate([-90,0,90]) rand_face(seed_vect[31]);
        translate([0,-38.8,0]) rotate([-90,0,90]) rand_face(seed_vect[32]);
        translate([0,-57.8,0]) rotate([-90,0,90]) rand_face(seed_vect[33]);
        translate([0,-76.8,0]) rotate([-90,0,90]) rand_face(seed_vect[34]);
        translate([0,-84.8,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) rand_face(seed_vect[35]);
      }
    }
  }
}

module 4x_static_corner_line(back1, back2, interior1, interior2, side, top, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,13,0]) cube([8.2,10,7]);
    translate([0,32,0]) cube([8.2,10,7]);
    translate([0,51,0]) cube([8.2,10,7]);
    translate([0,70,0]) cube([8.2,10,7]);
    translate([0,88,0]) cube([8.2,3,7]);

    translate([0,89.8,0]) cube([10,8.2,7]);
    translate([19,89.8,0]) cube([10,8.2,7]);
    translate([38,89.8,0]) cube([10,8.2,7]);
    translate([57,89.8,0]) cube([10,8.2,7]);
    translate([75,89.8,0]) cube([10,8.2,7]);
    translate([93,89.8,0]) cube([5,8.2,7]);

    translate([0,0,0]) cube([8.2,89.8,0.5]);
    translate([0,89.8,0]) cube([98,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,23,0]) rotate([0,0,270]) static_face(back1[1]);
      translate([0,42,0]) rotate([0,0,270]) static_face(back1[2]);
      translate([0,61,0]) rotate([0,0,270]) static_face(back1[3]);
      translate([0,80,0]) rotate([0,0,270]) static_face(back1[4]);
      translate([0,98,0]) rotate([0,0,270]) static_face(back1[5]);
    }
    translate([0,98+manifold,0]) union() {
      translate([10,0,0]) rotate([0,0,180]) static_face(back2[0]);
      translate([29,0,0]) rotate([0,0,180]) static_face(back2[1]);
      translate([48,0,0]) rotate([0,0,180]) static_face(back2[2]);
      translate([67,0,0]) rotate([0,0,180]) static_face(back2[3]);
      translate([85,0,0]) rotate([0,0,180]) static_face(back2[4]);
      translate([98,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[5]);
    }
    translate([0,89.8-manifold,0]) union() {
      translate([19,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([38,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([57,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([75,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([93,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) static_face(interior1[4]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,13,0]) rotate([0,0,90]) static_face(interior2[1]);
      translate([0,32,0]) rotate([0,0,90]) static_face(interior2[2]);
      translate([0,51,0]) rotate([0,0,90]) static_face(interior2[3]);
      translate([0,70,0]) rotate([0,0,90]) static_face(interior2[4]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([98+manifold,89.8,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);

    translate([0,89.8,7]) union() {
      translate([0,0,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
        translate([0,0,0]) scale([1,1,1]) static_face(top[0]);
        translate([19,0,0]) rand_face(top[1]);
        translate([38,0,0]) rand_face(top[2]);
        translate([57,0,0]) rand_face(top[3]);
        translate([75,0,0]) rand_face(top[4]);
        translate([93,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[5]);
      }
      translate([8.2,0,manifold]) scale([8.2/7,1,1]) union () {
        translate([0,-1.8,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[6]);
        translate([0,-19.8,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[7]);
        translate([0,-38.8,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[8]);
        translate([0,-57.8,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[9]);
        translate([0,-76.8,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[10]);
        translate([0,-84.8,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) static_face(top[11]);
      }
    }
  }
}

//seed_vect = rands(0, 100, 2);
//4x_corner_line(0, seed_vect[0]);
4x_static_corner_line(
  [47, 50, 61, 16, 30, 37], [51, 21, 42, 11, 17, 24],
  [6, 4, 29, 59, 19], [36, 44, 22, 1, 2],
  [34, 46], [6, 4, 18, 45, 37, 24, 62, 51, 9, 40, 48, 20]);
