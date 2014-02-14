include <forge_lib.scad>

module 4x_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 44, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,99,7]);
    translate([0,99,0]) cube([99+8.2,8.2,7]);
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
      translate([0,107,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[10]);
    }
    translate([0,99+8.2+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[11]);
      translate([18,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[12]);
      translate([28,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([38,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([48,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([58,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([68,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([78,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([88,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([98,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([107,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[21]);
    }
    translate([0,99-manifold,0]) union() {
      translate([9,0,0]) scale([0.9,1,1]) rand_face(seed_vect[22]);
      translate([18,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([28,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([38,0,0]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([48,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([58,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([68,0,0]) scale([1,1,1]) rand_face(seed_vect[28]);
      translate([78,0,0]) scale([1,1,1]) rand_face(seed_vect[29]);
      translate([88,0,0]) scale([1,1,1]) rand_face(seed_vect[30]);
      translate([98,0,0]) scale([0.9,1,1]) rand_face(seed_vect[31]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[32]);
      translate([0,9,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[33]);
      translate([0,19,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[34]);
      translate([0,29,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[35]);
      translate([0,39,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[36]);
      translate([0,49,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[37]);
      translate([0,59,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[38]);
      translate([0,69,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[39]);
      translate([0,79,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[40]);
      translate([0,89,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[41]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[42]);
    translate([99+8.2+manifold,99,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[43]);
  }
}
      
module 4x_static_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,99,7]);
    translate([0,99,0]) cube([99+8.2,8.2,7]);
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
      translate([0,107,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[10]);
    }
    translate([0,99+8.2+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[0]);
      translate([18,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[1]);
      translate([28,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([38,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([48,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[4]);
      translate([58,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[5]);
      translate([68,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[6]);
      translate([78,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[7]);
      translate([88,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[8]);
      translate([98,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[9]);
      translate([107,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[10]);
    }
    translate([0,99-manifold,0]) union() {
      translate([9,0,0]) scale([0.9,1,1]) static_face(seed_vect[0]);
      translate([18,0,0]) scale([1,1,1]) static_face(seed_vect[1]);
      translate([28,0,0]) scale([1,1,1]) static_face(seed_vect[2]);
      translate([38,0,0]) scale([1,1,1]) static_face(seed_vect[3]);
      translate([48,0,0]) scale([1,1,1]) static_face(seed_vect[4]);
      translate([58,0,0]) scale([1,1,1]) static_face(seed_vect[5]);
      translate([68,0,0]) scale([1,1,1]) static_face(seed_vect[6]);
      translate([78,0,0]) scale([1,1,1]) static_face(seed_vect[7]);
      translate([88,0,0]) scale([1,1,1]) static_face(seed_vect[8]);
      translate([98,0,0]) scale([0.9,1,1]) static_face(seed_vect[9]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(seed_vect[0]);
      translate([0,9,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[1]);
      translate([0,19,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[2]);
      translate([0,29,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[3]);
      translate([0,39,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[4]);
      translate([0,49,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[5]);
      translate([0,59,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[6]);
      translate([0,69,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[7]);
      translate([0,79,0]) rotate([0,0,90]) scale([1,1,1]) static_face(seed_vect[8]);
      translate([0,89,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(seed_vect[9]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(seed_vect[0]);
    translate([99+8.2+manifold,99,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(seed_vect[1]);
  }
}

module 4x_stagger_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 45, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,99,7]);
    translate([0,99,0]) cube([99+8.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[1]);
      translate([0,23,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[2]);
      translate([0,33,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([0,43,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([0,53,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([0,63,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([0,73,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([0,83,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([0,93,0]) rotate([0,0,270]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([0,107,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(seed_vect[10]);
    }
    translate([0,99+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) rand_face(seed_vect[11]);
      translate([24,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([44,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([54,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([64,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([74,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([84,0,0]) rotate([0,0,180]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([93,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[19]);
      translate([102,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[20]);
      translate([107,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[21]);
    }
    translate([0,99-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([14,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([24,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([34,0,0]) scale([1,1,1]) rand_face(seed_vect[25]);
      translate([44,0,0]) scale([1,1,1]) rand_face(seed_vect[26]);
      translate([54,0,0]) scale([1,1,1]) rand_face(seed_vect[27]);
      translate([64,0,0]) scale([1,1,1]) rand_face(seed_vect[28]);
      translate([74,0,0]) scale([1,1,1]) rand_face(seed_vect[29]);
      translate([84,0,0]) scale([0.9,1,1]) rand_face(seed_vect[30]);
      translate([93,0,0]) scale([0.9,1,1]) rand_face(seed_vect[31]);
      translate([102,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) rand_face(seed_vect[31]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[32]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[33]);
      translate([0,14,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[34]);
      translate([0,23,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[35]);
      translate([0,33,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[36]);
      translate([0,43,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[37]);
      translate([0,53,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[38]);
      translate([0,63,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[39]);
      translate([0,73,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[40]);
      translate([0,83,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[41]);
      translate([0,93,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[42]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[43]);
    translate([99+8.2+manifold,99,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[44]);
  }
}

module 4x_static_stagger_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,99,7]);
    translate([0,99,0]) cube([99+8.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[1]);
      translate([0,23,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[2]);
      translate([0,33,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[3]);
      translate([0,43,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[4]);
      translate([0,53,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[5]);
      translate([0,63,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[6]);
      translate([0,73,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[7]);
      translate([0,83,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[8]);
      translate([0,93,0]) rotate([0,0,270]) scale([1,1,1]) static_face(back1[9]);
      translate([0,107,0]) rotate([0,0,270]) scale([1.4,1,1]) static_face(back1[10]);
    }
    translate([0,99+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) static_face(back2[0]);
      translate([24,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[1]);
      translate([34,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[2]);
      translate([44,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[3]);
      translate([54,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[4]);
      translate([64,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[5]);
      translate([74,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[6]);
      translate([84,0,0]) rotate([0,0,180]) scale([1,1,1]) static_face(back2[7]);
      translate([93,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[8]);
      translate([102,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[9]);
      translate([107,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[10]);
    }
    translate([0,99-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([14,0,0]) scale([1,1,1]) static_face(interior1[1]);
      translate([24,0,0]) scale([1,1,1]) static_face(interior1[2]);
      translate([34,0,0]) scale([1,1,1]) static_face(interior1[3]);
      translate([44,0,0]) scale([1,1,1]) static_face(interior1[4]);
      translate([54,0,0]) scale([1,1,1]) static_face(interior1[5]);
      translate([64,0,0]) scale([1,1,1]) static_face(interior1[6]);
      translate([74,0,0]) scale([1,1,1]) static_face(interior1[7]);
      translate([84,0,0]) scale([0.9,1,1]) static_face(interior1[8]);
      translate([93,0,0]) scale([0.9,1,1]) static_face(interior1[9]);
      translate([102,0,7]) rotate([0,90,0])scale([7/10,1,5/7]) static_face(interior1[10]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[1]);
      translate([0,14,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[2]);
      translate([0,23,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[3]);
      translate([0,33,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[4]);
      translate([0,43,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[5]);
      translate([0,53,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[6]);
      translate([0,63,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[7]);
      translate([0,73,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[8]);
      translate([0,83,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[9]);
      translate([0,93,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[10]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([99+8.2+manifold,99,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 4x_corner_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 21, seed=seed);
  translate([0,99,manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([10,0,0]) scale([0.9,1,1]) rand_face(seed_vect[0]);
      translate([19,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([29,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([39,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([49,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([59,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([69,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([79,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([89,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([99,0,0]) scale([0.9,1,1]) rand_face(seed_vect[9]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[10]);
      translate([0,-19,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([0,-29,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([0,-39,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([0,-49,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([0,-59,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([0,-69,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([0,-79,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([0,-89,0]) rotate([-90,0,90]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([0,-98,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[19]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[20]);
  }
}

module 4x_static_corner_top(top, manifold=-0.05) {
  translate([0,99,manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([10,0,0]) scale([0.9,1,1]) static_face(top[0]);
      translate([19,0,0]) scale([1,1,1]) static_face(top[1]);
      translate([29,0,0]) scale([1,1,1]) static_face(top[2]);
      translate([39,0,0]) scale([1,1,1]) static_face(top[3]);
      translate([49,0,0]) scale([1,1,1]) static_face(top[4]);
      translate([59,0,0]) scale([1,1,1]) static_face(top[5]);
      translate([69,0,0]) scale([1,1,1]) static_face(top[6]);
      translate([79,0,0]) scale([1,1,1]) static_face(top[7]);
      translate([89,0,0]) scale([1,1,1]) static_face(top[8]);
      translate([99,0,0]) scale([0.9,1,1]) static_face(top[9]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[10]);
      translate([0,-19,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[11]);
      translate([0,-29,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[12]);
      translate([0,-39,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[13]);
      translate([0,-49,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[14]);
      translate([0,-59,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[15]);
      translate([0,-69,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[16]);
      translate([0,-79,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[17]);
      translate([0,-89,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(top[18]);
      translate([0,-98,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[19]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[20]);
  }
}

seed_vect = rands(0, 100, 2);
//4x_corner_line(0, seed_vect[0]);
//translate([0,0,7]) 4x_corner_top(seed_vect[1]);
//4x_stagger_corner_line(0, seed_vect[0]);
