include <forge_lib.scad>

module 3x_edge_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 36, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,74,7]);
    translate([0,74,0]) cube([74+8.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[1]);
      translate([0,24,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([0,34,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([0,44,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([0,54,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([0,64,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([0,73,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[7]);
      translate([0,82,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[8]);
    }
    translate([0,74+8.2+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[9]);
      translate([18,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[10]);
      translate([28,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([38,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([48,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([58,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([68,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([77,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[16]);
      translate([82,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[17]);
    }
    translate([0,74-manifold,0]) union() {
      translate([9,0,0]) scale([0.9,1,1]) rand_face(seed_vect[18]);
      translate([18,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([28,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([38,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([48,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([58,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([68,0,0]) scale([0.9,1,1]) rand_face(seed_vect[24]);
      translate([77,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[25]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[26]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[27]);
      translate([0,14,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[28]);
      translate([0,24,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[29]);
      translate([0,34,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[30]);
      translate([0,44,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[31]);
      translate([0,54,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[32]);
      translate([0,64,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[33]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[34]);
    translate([74+8.2+manifold,74,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[35]);
  }
}
      
module 3x_static_edge_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,74,7]);
    translate([0,74,0]) cube([74+8.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[1]);
      translate([0,24,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[2]);
      translate([0,34,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[3]);
      translate([0,44,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[4]);
      translate([0,54,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[5]);
      translate([0,64,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[6]);
      translate([0,73,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[7]);
      translate([0,82,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[8]);
    }
    translate([0,74+8.2+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[0]);
      translate([18,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[1]);
      translate([28,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([38,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([48,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[4]);
      translate([58,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[5]);
      translate([68,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[6]);
      translate([77,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[7]);
      translate([82,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[8]);
    }
    translate([0,74-manifold,0]) union() {
      translate([9,0,0]) scale([0.9,1,1]) static_face(interior1[0]);
      translate([18,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([28,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([38,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([48,0,0]) scale([1,1,1]) static_face(interior1[4]);
      translate([58,0,0]) scale([1,1,1]) static_face(interior1[5]);
      translate([68,0,0]) scale([0.9,1,1]) static_face(interior1[6]);
      translate([77,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(interior1[7]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[1]);
      translate([0,14,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
      translate([0,24,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[3]);
      translate([0,34,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[4]);
      translate([0,44,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[5]);
      translate([0,54,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[6]);
      translate([0,64,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[7]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([74+8.2+manifold,74,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 3x_stagger_edge_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 34, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,74,7]);
    translate([0,74,0]) cube([74+8.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,9,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[0]);
      translate([0,19,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([0,29,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([0,39,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([0,49,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([0,59,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([0,68,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[6]);
      translate([0,82,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(seed_vect[7]);
    }
    translate([0,74+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) rand_face(seed_vect[8]);
      translate([23,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[9]);
      translate([33,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([43,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([53,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([63,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([73,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([82,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[15]);
    }
    translate([0,74-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([14,0,0]) scale([0.9,1,1]) rand_face(seed_vect[17]);
      translate([23,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([33,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([43,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([53,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([63,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([73,0,0]) scale([0.9,1,1]) rand_face(seed_vect[23]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[24]);
      translate([0,9,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([0,19,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([0,29,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([0,39,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[28]);
      translate([0,49,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[29]);
      translate([0,59,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[30]);
      translate([0,69,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[31]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[32]);
    translate([74+8.2+manifold,74,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[33]);
  }
}

module 3x_static_stagger_edge_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,74,7]);
    translate([0,74,0]) cube([74+8.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,9,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[0]);
      translate([0,19,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[1]);
      translate([0,29,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[2]);
      translate([0,39,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[3]);
      translate([0,49,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[4]);
      translate([0,59,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[5]);
      translate([0,68,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[6]);
      translate([0,82,0]) rotate([0,0,270]) scale([1.4,1,1]) static_face(back1[7]);
    }
    translate([0,74+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) static_face(back2[0]);
      translate([23,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[1]);
      translate([33,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([43,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([53,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[4]);
      translate([63,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[5]);
      translate([73,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[6]);
      translate([82,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[7]);
    }
    translate([0,74-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([14,0,0]) scale([0.9,1,1]) static_face(interior1[1]);
      translate([23,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([33,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([43,0,0]) scale([1,1,1]) static_face(interior1[4]);
      translate([53,0,0]) scale([1,1,1]) static_face(interior1[5]);
      translate([63,0,0]) scale([1,1,1]) static_face(interior1[6]);
      translate([73,0,0]) scale([0.9,1,1]) static_face(interior1[7]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[0]);
      translate([0,9,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[1]);
      translate([0,19,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
      translate([0,29,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[3]);
      translate([0,39,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[4]);
      translate([0,49,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[5]);
      translate([0,59,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[6]);
      translate([0,69,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[7]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([74+8.2+manifold,74,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 3x_edge_corner_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 17, seed=seed);
  translate([0,74,manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([10,0,0]) scale([0.9,1,1]) rand_face(seed_vect[0]);
      translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([29,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([39,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([49,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([59,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([69,0,0]) scale([0.9,1,1]) rand_face(seed_vect[6]);
      translate([78,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[7]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[8]);
      translate([0,-19,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([0,-29,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([0,-39,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([0,-49,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([0,-59,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([0,-68,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[14]);
      translate([0,-68,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) rand_face(seed_vect[15]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[16]);
  }
}

module 3x_static_edge_corner_top(top, manifold=-0.05) {
  translate([0,74,manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([10,0,0]) scale([0.9,1,1]) static_face(top[0]);
      translate([19,0,0]) scale([1,1,1]) static_face(top[1]);
      translate([29,0,0]) scale([1,1,1]) static_face(top[2]);
      translate([39,0,0]) scale([1,1,1]) static_face(top[3]);
      translate([49,0,0]) scale([1,1,1]) static_face(top[4]);
      translate([59,0,0]) scale([1,1,1]) static_face(top[5]);
      translate([69,0,0]) scale([0.9,1,1]) static_face(top[6]);
      translate([78,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[7]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[8]);
      translate([0,-19,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[9]);
      translate([0,-29,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[10]);
      translate([0,-39,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[11]);
      translate([0,-49,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[12]);
      translate([0,-59,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[13]);
      translate([0,-68,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[14]);
      translate([0,-68,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) static_face(top[15]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[16]);
  }
}

seed_vect = rands(0, 100, 2);
//3x_edge_corner_line(0, seed_vect[0]);
//translate([0,0,7]) 3x_edge_corner_top(seed_vect[1]);
//3x_stagger_edge_corner_line(0, seed_vect[0]);
