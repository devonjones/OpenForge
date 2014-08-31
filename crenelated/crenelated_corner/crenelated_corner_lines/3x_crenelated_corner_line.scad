include <forge_lib.scad>

module 3x_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 32, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,15,0]) cube([8.2,10,7]);
    translate([0,35,0]) cube([8.2,10,7]);
    translate([0,55,0]) cube([8.2,9.8,7]);

    translate([0,64.8,0]) cube([18,8.2,7]);
    translate([28,64.8,0]) cube([10,8.2,7]);
    translate([48,64.8,0]) cube([10,8.2,7]);
    translate([68,64.8,0]) cube([5,8.2,7]);

    translate([0,0,0]) cube([8.2,64.8,0.5]);
    translate([0,64.8,0]) cube([73,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,25,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([0,45,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([0,73,0]) rotate([0,0,270]) scale([1.8,1,1]) rand_face(seed_vect[3]);
    }
    translate([0,73+manifold,0]) union() {
      translate([18,0,0]) rotate([0,0,180]) scale([1.8,1,1]) rand_face(seed_vect[4]);
      translate([38,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([58,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([73,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[7]);
    }
    translate([0,64.8-manifold,0]) union() {
      translate([8,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([28,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([48,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([68,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[12]);
      translate([0,15,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([0,35,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([0,55,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[15]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[16]);
    translate([73+manifold,64.8,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[17]);
  }

  translate([0,65,7]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,0]) scale([1.8,1,1]) rand_face(seed_vect[18]);
      translate([29,0,0]) rand_face(seed_vect[19]);
      translate([49,0,0]) rand_face(seed_vect[20]);
      translate([69,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[21]);
    }
    translate([9.2,0,manifold]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([1.4,1,1]) rand_face(seed_vect[22]);
      translate([0,-29,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([0,-49,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([0,-59,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) rand_face(seed_vect[25]);
    }
    translate([10,0,manifold]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[26]);
  }
}
      
module 3x_static_corner_line(back1, back2, interior1, interior2, side, top, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,5,7]);
    translate([0,15,0]) cube([8.2,10,7]);
    translate([0,35,0]) cube([8.2,10,7]);
    translate([0,55,0]) cube([8.2,9.8,7]);

    translate([0,64.8,0]) cube([18,8.2,7]);
    translate([28,64.8,0]) cube([10,8.2,7]);
    translate([48,64.8,0]) cube([10,8.2,7]);
    translate([68,64.8,0]) cube([5,8.2,7]);

    translate([0,0,0]) cube([8.2,64.8,0.5]);
    translate([0,64.8,0]) cube([73,8.2,0.5]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,25,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[1]);
      translate([0,45,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[2]);
      translate([0,73,0]) rotate([0,0,270]) scale([1.8,1,1]) static_face(back1[3]);
    }
    translate([0,73+manifold,0]) union() {
      translate([18,0,0]) rotate([0,0,180]) scale([1.8,1,1]) static_face(back2[0]);
      translate([38,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[1]);
      translate([58,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([73,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[3]);
    }
    translate([0,64.8-manifold,0]) union() {
      translate([8,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([28,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([48,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([68,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(interior1[3]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,15,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[1]);
      translate([0,35,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
      translate([0,55,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[3]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([73+manifold,64.8,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }

  translate([0,65,7]) union() {
    translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([1,0,0]) scale([1.8,1,1]) static_face(top[0]);
      translate([29,0,0]) static_face(top[1]);
      translate([49,0,0]) static_face(top[2]);
      translate([69,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[3]);
    }
    translate([9.2,0,manifold]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([1.4,1,1]) static_face(top[4]);
      translate([0,-29,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[5]);
      translate([0,-49,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[6]);
      translate([0,-59,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) static_face(top[7]);
    }
    translate([10,0,manifold]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[8]);
  }
}

//seed_vect = rands(0, 100, 2);
//3x_corner_line(0, seed_vect[0]);
3x_static_corner_line(
  [37, 55, 61, 57], [54, 25, 56, 49],
  [4, 56, 63, 29], [27, 30, 52, 19],
  [11, 28],
  [35, 2, 21, 40, 43, 62, 52, 7, 0]);

