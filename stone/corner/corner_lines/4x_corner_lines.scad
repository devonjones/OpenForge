include <forge_lib.scad>

module 4x_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 40, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,89.8,7]);
    translate([0,89.8,0]) cube([98,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,9,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[0]);
      translate([0,19,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([0,29,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([0,39,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([0,49,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([0,59,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([0,69,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([0,79,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([0,89,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([0,98,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[9]);
    }
    translate([0,98+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[10]);
      translate([19,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([29,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([39,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([49,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([59,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([69,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([79,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([89,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([98,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[19]);
    }
    translate([0,89.8-manifold,0]) union() {
      translate([9,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([29,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([39,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([49,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([59,0,0]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([69,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([79,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([89,0,0]) rotate([0,0,0]) scale([0.9,1,1]) rand_face(seed_vect[28]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[29]);
      translate([0,9,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[30]);
      translate([0,19,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[31]);
      translate([0,29,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[32]);
      translate([0,39,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[33]);
      translate([0,49,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[34]);
      translate([0,59,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[35]);
      translate([0,69,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[36]);
      translate([0,79,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[37]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[39]);
    translate([98+manifold,89.8,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[39]);
  }
}
      
module 4x_static_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,89.8,7]);
    translate([0,89.8,0]) cube([98,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,9,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[0]);
      translate([0,19,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[1]);
      translate([0,29,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[2]);
      translate([0,39,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[3]);
      translate([0,49,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[4]);
      translate([0,59,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[5]);
      translate([0,69,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[6]);
      translate([0,79,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[7]);
      translate([0,89,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[8]);
      translate([0,98,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[9]);
    }
    translate([0,98+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[0]);
      translate([19,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[1]);
      translate([29,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([39,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([49,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[4]);
      translate([59,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[5]);
      translate([69,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[6]);
      translate([79,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[7]);
      translate([89,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[8]);
      translate([98,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[9]);
    }
    translate([0,89.8-manifold,0]) union() {
      translate([9,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([19,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([29,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([39,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([49,0,0]) scale([1,1,1]) static_face(interior1[4]);
      translate([59,0,0]) scale([1,1,1]) static_face(interior1[5]);
      translate([69,0,0]) scale([1,1,1]) static_face(interior1[6]);
      translate([79,0,0]) scale([1,1,1]) static_face(interior1[7]);
      translate([89,0,0]) rotate([0,00,0]) scale([0.9,1,1]) static_face(interior1[8]);
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
      translate([0,79,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[8]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([98+manifold,89.8,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 4x_stagger_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 42, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,89.8,7]);
    translate([0,89.8,0]) cube([98,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[1]);
      translate([0,24,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([0,34,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([0,44,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([0,54,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([0,64,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([0,74,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([0,84,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([0,98,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(seed_vect[9]);
    }
    translate([0,98+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) rand_face(seed_vect[10]);
      translate([24,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([44,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([54,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([64,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([74,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([84,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([93,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[18]);
      translate([98,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[19]);
    }
    translate([0,89.8-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([14,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([24,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([34,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([44,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([54,0,0]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([64,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([74,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([84,0,0]) scale([0.9,1,1]) rand_face(seed_vect[28]);
      translate([93,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) rand_face(seed_vect[29]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[30]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[31]);
      translate([0,14,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[32]);
      translate([0,24,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[33]);
      translate([0,34,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[34]);
      translate([0,44,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[35]);
      translate([0,54,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[36]);
      translate([0,64,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[37]);
      translate([0,74,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[38]);
      translate([0,84,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[39]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[40]);
    translate([98+manifold,89.8,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[41]);
  }
}

module 4x_static_stagger_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,89.8,7]);
    translate([0,89.8,0]) cube([98,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[1]);
      translate([0,24,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[2]);
      translate([0,34,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[3]);
      translate([0,44,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[4]);
      translate([0,54,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[5]);
      translate([0,64,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[6]);
      translate([0,74,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[7]);
      translate([0,84,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[8]);
      translate([0,98,0]) rotate([0,0,270]) scale([1.4,1,1]) static_face(back1[9]);
    }
    translate([0,98+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) static_face(back2[0]);
      translate([24,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[1]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([44,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([54,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[4]);
      translate([64,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[5]);
      translate([74,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[6]);
      translate([84,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[7]);
      translate([93,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[8]);
      translate([98,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[9]);
    }
    translate([0,89.8-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([14,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([24,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([34,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([44,0,0]) scale([1,1,1]) static_face(interior1[4]);
      translate([54,0,0]) scale([1,1,1]) static_face(interior1[5]);
      translate([64,0,0]) scale([1,1,1]) static_face(interior1[6]);
      translate([74,0,0]) scale([1,1,1]) static_face(interior1[7]);
      translate([84,0,0]) scale([0.9,1,1]) static_face(interior1[8]);
      translate([93,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) static_face(interior1[9]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[1]);
      translate([0,14,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
      translate([0,24,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[3]);
      translate([0,34,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[4]);
      translate([0,44,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[5]);
      translate([0,54,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[6]);
      translate([0,64,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[7]);
      translate([0,74,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[8]);
      translate([0,84,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[9]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([98+manifold,89.8,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 4x_corner_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 19, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([10,0,0]) rand_face(seed_vect[0]);
    translate([20,0,0]) rand_face(seed_vect[1]);
    translate([30,0,0]) rand_face(seed_vect[2]);
    translate([40,0,0]) rand_face(seed_vect[3]);
    translate([50,0,0]) rand_face(seed_vect[4]);
    translate([60,0,0]) rand_face(seed_vect[5]);
    translate([70,0,0]) rand_face(seed_vect[6]);
    translate([80,0,0]) rand_face(seed_vect[7]);
    translate([90,0,0]) scale([.9,1,1]) rand_face(seed_vect[8]);
  }
  translate([9.2,0,manifold]) scale([8.2/7,1,1]) union () {
    translate([0,-10,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[9]);
    translate([0,-20,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[10]);
    translate([0,-30,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[11]);
    translate([0,-40,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[12]);
    translate([0,-50,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[13]);
    translate([0,-60,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[14]);
    translate([0,-70,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[15]);
    translate([0,-80,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[16]);
    translate([0,-89,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[17]);
  }
  translate([10,0,manifold]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[18]);
}

module 4x_static_corner_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([10,0,0]) static_face(top[0]);
    translate([20,0,0]) static_face(top[1]);
    translate([30,0,0]) static_face(top[2]);
    translate([40,0,0]) static_face(top[3]);
    translate([50,0,0]) static_face(top[4]);
    translate([60,0,0]) static_face(top[5]);
    translate([70,0,0]) static_face(top[6]);
    translate([80,0,0]) static_face(top[7]);
    translate([90,0,0]) scale([.9,1,1]) static_face(top[8]);
  }
  translate([9.2,0,manifold]) scale([8.2/7,1,1]) union () {
    translate([0,-10,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[9]);
    translate([0,-20,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[10]);
    translate([0,-30,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[11]);
    translate([0,-40,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[12]);
    translate([0,-50,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[13]);
    translate([0,-60,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[14]);
    translate([0,-70,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[15]);
    translate([0,-80,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[16]);
    translate([0,-89,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[17]);
  }
  translate([10,0,manifold]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[18]);
}

//seed_vect = rands(0, 100, 2);
//4x_stagger_corner_line(0, seed_vect[0]);
//translate([0,90,7]) 4x_corner_top(seed_vect[0]);