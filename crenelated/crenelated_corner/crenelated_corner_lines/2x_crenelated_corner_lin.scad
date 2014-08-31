include <forge_lib.scad>

module 2x_stagger_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 22, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,14,0]) cube([8.2,10,7]);
    translate([0,34,0]) cube([8.2,6,7]);
    translate([0,39.8,0]) cube([14,8.2,7]);
    translate([24,39.8,0]) cube([10,8.2,7]);
    translate([43,39.8,0]) cube([5,8.2,7]);
    translate([0,0,0]) cube([8.2,39.8,0.5]);
    translate([0,39.8,0]) cube([48,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,24,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([0,48,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(seed_vect[2]);
    }
    translate([0,48+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) rand_face(seed_vect[3]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([48,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[5]);
    }
    translate([0,39.8-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([24,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([43,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) rand_face(seed_vect[8]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[9]);
      translate([0,14,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([0,34,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[11]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([48+manifold,39.8,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }

  translate([0,39.8,7]) {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([5,0,0]) rand_face(seed_vect[14]);
      translate([25,0,0]) rand_face(seed_vect[15]);
      translate([44,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[16]);
    }
    translate([9.2,0,manifold]) scale([8.2/7,1,1]) union () {
      translate([0,-5,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([0,-25,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([0,-33.8,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) rand_face(seed_vect[19]);
    }
    translate([10,0,manifold]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[20]);
  }
}

module 2x_static_stagger_corner_line(back1, back2, interior1, interior2, side, top, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,14,0]) cube([8.2,10,7]);
    translate([0,34,0]) cube([8.2,6,7]);
    translate([0,39.8,0]) cube([14,8.2,7]);
    translate([24,39.8,0]) cube([10,8.2,7]);
    translate([43,39.8,0]) cube([5,8.2,7]);
    translate([0,0,0]) cube([8.2,39.8,0.5]);
    translate([0,39.8,0]) cube([48,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(back1[0]);
      translate([0,24,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(back1[1]);
      translate([0,48,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(back1[2]);
    }
    translate([0,48+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) static_face(back2[0]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[1]);
      translate([48,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[2]);
    }
    translate([0,39.8-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([24,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([43,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) static_face(interior1[2]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,14,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[1]);
      translate([0,34,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([48+manifold,39.8,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }

  translate([0,39.8,7]) {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([5,0,0]) static_face(top[0]);
      translate([25,0,0]) static_face(top[1]);
      translate([44,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[2]);
    }
    translate([9.2,0,manifold]) scale([8.2/7,1,1]) union () {
      translate([0,-5,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[3]);
      translate([0,-25,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[4]);
      translate([0,-33.8,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) static_face(top[5]);
    }
    translate([10,0,manifold]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[6]);
  }
}

//seed_vect = rands(0, 100, 2);
//2x_stagger_corner_line(0, seed_vect[0]);
2x_static_stagger_corner_line([40, 33, 47], [37, 8, 6], [32, 5, 33], [13, 0, 1], [7, 1], [38, 12, 42, 0, 45, 41, 50]);

/*
union() {
  2x_static_corner_line([40, 33, 47, 37, 43], [37, 8, 6, 34, 10], [32, 5, 33, 26], [13, 0, 1, 2], [7, 1]);
  translate([0,39.8,7]) 2x_static_corner_top([38, 12, 42, 0, 45, 41, 46, 6, 35]);
}*/