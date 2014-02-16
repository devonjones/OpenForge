include <forge_lib.scad>

//68.807923

module 1x3_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 16, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([68.807923-2,8.2,7]);
    difference() {
      translate([-3,0,0]) cube([4,8.2,7]);
      translate([1,0,-1]) rotate([0,0,26.003345844511443+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
      translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([30,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([50,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([60,0,0]) scale([.75,1,1]) rand_face(seed_vect[6]);
    }
    translate([68.807923,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.75,1,1]) rand_face(seed_vect[7]);
      translate([8.5,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([18.5,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([28.5,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([38.5,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([48.5,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([58.5,0,0]) scale([1.3,1,1]) rand_face(seed_vect[13]);
    }
    rotate([0,0,26.003345844511443]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[14]);
    translate([68.807923-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[15]);
  }
}
      
module 1x3_static_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([68.807923-2,8.2,7]);
    difference() {
      translate([-3,0,0]) cube([4,8.2,7]);
      translate([1,0,-1]) rotate([0,0,26.003345844511443+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(front[0]);
      translate([10,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([20,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([30,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([40,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([50,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([60,0,0]) scale([.75,1,1]) static_face(front[6]);
    }
    translate([68.807923,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.75,1,1]) static_face(back[0]);
      translate([8.5,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([18.5,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([28.5,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([38.5,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([48.5,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([58.5,0,0]) scale([1.3,1,1]) static_face(back[6]);
    }
    rotate([0,0,26.003345844511443]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([68.807923-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x3_stagger_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 16, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([68.807923-2,8.2,7]);
    difference() {
      translate([-3,0,0]) cube([4,8.2,7]);
      translate([1,0,-1]) rotate([0,0,26.003345844511443+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.75,1,1]) rand_face(seed_vect[0]);
      translate([8.5,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([18.5,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([28.5,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([38.5,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([48.5,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([58.5,0,0]) scale([.9,1,1]) rand_face(seed_vect[6]);
    }
    translate([68.807923,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[7]);
      translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([30,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([50,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([60,0,0]) scale([1.15,1,1]) rand_face(seed_vect[13]);
    }
    rotate([0,0,26.003345844511443]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[14]);
    translate([68.807923-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[15]);
  }
}

module 1x3_static_stagger_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([68.807923-2,8.2,7]);
    difference() {
      translate([-3,0,0]) cube([4,8.2,7]);
      translate([1,0,-1]) rotate([0,0,26.003345844511443+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.75,1,1]) static_face(front[0]);
      translate([8.5,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([18.5,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([28.5,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([38.5,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([48.5,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([58.5,0,0]) scale([.9,1,1]) static_face(front[6]);
    }
    translate([68.807923,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1,0,0]) scale([.9,1,1]) static_face(back[0]);
      translate([10,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([20,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([30,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([40,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([50,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([60,0,0]) scale([1.15,1,1]) static_face(back[6]);
    }
    rotate([0,0,26.003345844511443]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([68.807923-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x3_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 6, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
    translate([10,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([20,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([30,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([40,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([50,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([60,0,0]) scale([.75,1,1]) rand_face(seed_vect[3]);
  }
}

module 1x3_static_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.9,1,1]) static_face(top[0]);
    translate([10,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([20,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([30,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([40,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([50,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([60,0,0]) scale([.75,1,1]) static_face(top[6]);
  }
}

module 1x3_staggered_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 7, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.75,1,1]) rand_face(seed_vect[0]);
    translate([8.5,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
    translate([18.5,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([28.5,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([38.5,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([48.5,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([58.5,0,0]) scale([.9,1,1]) rand_face(seed_vect[6]);
  }
}

module 1x3_static_staggered_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.75,1,1]) static_face(top[0]);
    translate([8.5,0,0]) scale([.9,1,1]) static_face(top[1]);
    translate([18.5,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([28.5,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([38.5,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([48.5,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([58.5,0,0]) scale([.9,1,1]) static_face(top[6]);
  }
}

//seed_vect = rands(0, 100, 2);
//1x3_curved_line(0, seed_vect[0]);
//1x3_stagger_curved_line(0, seed_vect[0]);
//translate([0,0,7]) 1x2_curved_top(seed_vect[0]);
//translate([0,0,7]) 1x2_staggered_curved_top(seed_vect[0]);
