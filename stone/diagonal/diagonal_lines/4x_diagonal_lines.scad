include <forge_lib.scad>

module 4x_diagonal_line(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 28, seed=seed);
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(2*pow(98, 2)),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(100, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([7,0,0]) rand_face(seed_vect[0]);
        translate([17,0,0]) rand_face(seed_vect[1]);
        translate([27,0,0]) rand_face(seed_vect[2]);
        translate([37,0,0]) rand_face(seed_vect[3]);
        translate([47,0,0]) rand_face(seed_vect[4]);
        translate([57,0,0]) rand_face(seed_vect[5]);
        translate([67,0,0]) rand_face(seed_vect[6]);
        translate([77,0,0]) rand_face(seed_vect[7]);
        translate([87,0,0]) rand_face(seed_vect[8]);
        translate([97,0,0]) rand_face(seed_vect[9]);
        translate([107,0,0]) rand_face(seed_vect[10]);
        translate([117,0,0]) rand_face(seed_vect[11]);
        translate([127,0,0]) scale([.55,1,1]) rand_face(seed_vect[12]);
      }
      translate([0,manifold,0]) union() {
        translate([16.9,5.8,0]) scale([1.56,1,1]) rotate([0,0,180]) rand_face(seed_vect[13]);
        translate([26.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[14]);
        translate([36.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[15]);
        translate([46.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[16]);
        translate([56.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[17]);
        translate([66.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[18]);
        translate([76.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[19]);
        translate([86.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[20]);
        translate([96.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[21]);
        translate([106.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[22]);
        translate([116.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[23]);
        translate([126.9,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[24]);
        translate([138.4,5.8,0]) scale([1.15,1,1]) rotate([0,0,180]) rand_face(seed_vect[25]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) rand_face(seed_vect[26]);
      translate([sqrt(2*pow(98, 2))-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) rand_face(seed_vect[27]);
    }
  }
}
      
module 4x_static_diagonal_line(front, back, side, manifold=-0.05) {
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(2*pow(98, 2)),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(100, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([7,0,0]) static_face(front[0]);
        translate([17,0,0]) static_face(front[1]);
        translate([27,0,0]) static_face(front[2]);
        translate([37,0,0]) static_face(front[3]);
        translate([47,0,0]) static_face(front[4]);
        translate([57,0,0]) static_face(front[5]);
        translate([67,0,0]) static_face(front[6]);
        translate([77,0,0]) static_face(front[7]);
        translate([87,0,0]) static_face(front[8]);
        translate([97,0,0]) static_face(front[9]);
        translate([107,0,0]) static_face(front[10]);
        translate([117,0,0]) static_face(front[11]);
        translate([127,0,0]) scale([.55,1,1]) static_face(front[12]);
      }
      translate([0,manifold,0]) union() {
        translate([16.9,5.8,0]) scale([1.56,1,1]) rotate([0,0,180]) static_face(back[0]);
        translate([26.9,5.8,0]) rotate([0,0,180]) static_face(back[1]);
        translate([36.9,5.8,0]) rotate([0,0,180]) static_face(back[2]);
        translate([46.9,5.8,0]) rotate([0,0,180]) static_face(back[3]);
        translate([56.9,5.8,0]) rotate([0,0,180]) static_face(back[4]);
        translate([66.9,5.8,0]) rotate([0,0,180]) static_face(back[5]);
        translate([76.9,5.8,0]) rotate([0,0,180]) static_face(back[6]);
        translate([86.9,5.8,0]) rotate([0,0,180]) static_face(back[7]);
        translate([96.9,5.8,0]) rotate([0,0,180]) static_face(back[8]);
        translate([106.9,5.8,0]) rotate([0,0,180]) static_face(back[9]);
        translate([116.9,5.8,0]) rotate([0,0,180]) static_face(back[10]);
        translate([126.9,5.8,0]) rotate([0,0,180]) static_face(back[11]);
        translate([138.4,5.8,0]) scale([1.15,1,1]) rotate([0,0,180]) static_face(back[12]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) static_face(side[0]);
      translate([sqrt(2*pow(98, 2))-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) static_face(side[1]);
    }
  }
}

module 4x_stagger_diagonal_line(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 28, seed=seed);
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(2*pow(98, 2)),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(100, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([12,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
        translate([12,0,0]) rand_face(seed_vect[1]);
        translate([22,0,0]) rand_face(seed_vect[2]);
        translate([32,0,0]) rand_face(seed_vect[3]);
        translate([42,0,0]) rand_face(seed_vect[4]);
        translate([52,0,0]) rand_face(seed_vect[5]);
        translate([62,0,0]) rand_face(seed_vect[6]);
        translate([72,0,0]) rand_face(seed_vect[7]);
        translate([82,0,0]) rand_face(seed_vect[8]);
        translate([92,0,0]) rand_face(seed_vect[9]);
        translate([102,0,0]) rand_face(seed_vect[10]);
        translate([112,0,0]) rand_face(seed_vect[11]);
        translate([122,0,0]) rand_face(seed_vect[12]);
      }
      translate([0,manifold,0]) union() {
        translate([12.2,5.8,0]) rotate([0,0,180]) scale([1.1,1,1]) rand_face(seed_vect[13]);
        translate([22.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[14]);
        translate([32.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[15]);
        translate([42.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[16]);
        translate([52.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[17]);
        translate([62.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[18]);
        translate([72.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[19]);
        translate([82.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[20]);
        translate([92.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[21]);
        translate([102.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[22]);
        translate([112.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[23]);
        translate([122.2,5.8,0]) rotate([0,0,180]) rand_face(seed_vect[24]);
        translate([138.2,5.8,0]) scale([1.6,1,1]) rotate([0,0,180]) rand_face(seed_vect[25]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) rand_face(seed_vect[26]);
      translate([sqrt(2*pow(98, 2))-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) rand_face(seed_vect[27]);
    }
  }
}

module 4x_static_stagger_diagonal_line(front, back, side, manifold=-0.05) {
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(2*pow(98, 2)),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(100, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([12,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[0]);
        translate([12,0,0]) static_face(front[1]);
        translate([22,0,0]) static_face(front[2]);
        translate([32,0,0]) static_face(front[3]);
        translate([42,0,0]) static_face(front[4]);
        translate([52,0,0]) static_face(front[5]);
        translate([62,0,0]) static_face(front[6]);
        translate([72,0,0]) static_face(front[7]);
        translate([82,0,0]) static_face(front[8]);
        translate([92,0,0]) static_face(front[9]);
        translate([102,0,0]) static_face(front[10]);
        translate([112,0,0]) static_face(front[11]);
        translate([122,0,0]) static_face(front[12]);
      }
      translate([0,manifold,0]) union() {
        translate([12.2,5.8,0]) rotate([0,0,180]) scale([1.1,1,1]) static_face(back[0]);
        translate([22.2,5.8,0]) rotate([0,0,180]) static_face(back[1]);
        translate([32.2,5.8,0]) rotate([0,0,180]) static_face(back[2]);
        translate([42.2,5.8,0]) rotate([0,0,180]) static_face(back[3]);
        translate([52.2,5.8,0]) rotate([0,0,180]) static_face(back[4]);
        translate([62.2,5.8,0]) rotate([0,0,180]) static_face(back[5]);
        translate([72.2,5.8,0]) rotate([0,0,180]) static_face(back[6]);
        translate([82.2,5.8,0]) rotate([0,0,180]) static_face(back[7]);
        translate([92.2,5.8,0]) rotate([0,0,180]) static_face(back[8]);
        translate([102.2,5.8,0]) rotate([0,0,180]) static_face(back[9]);
        translate([112.2,5.8,0]) rotate([0,0,180]) static_face(back[10]);
        translate([122.2,5.8,0]) rotate([0,0,180]) static_face(back[11]);
        translate([138.2,5.8,0]) scale([1.6,1,1]) rotate([0,0,180]) static_face(back[12]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) static_face(side[0]);
      translate([sqrt(2*pow(98, 2))-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) static_face(side[1]);
    }
  }
}

module 4x_diagonal_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 11, seed=seed);
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.2,0,2.35]) scale([1.1,1,.7]) static_face(13);
    translate([8.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[0]);
    translate([18.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[1]);
    translate([28.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[2]);
    translate([38.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[3]);
    translate([48.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[4]);
    translate([58.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[5]);
    translate([68.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[6]);
    translate([78.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[7]);
    translate([88.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[8]);
    translate([98.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[9]);
    translate([108.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[10]);
    translate([118.8,0,2.35]) scale([0.6,1,.7]) static_face(14);
    translate([122.8,0,2.35]) scale([.82,1,.7]) diagonal_face(0);
  }
}

module 4x_static_diagonal_top(top, manifold=-0.05) {
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.2,0,2.35]) scale([1.1,1,.7]) static_face(13);
    translate([8.8,0,2.35]) scale([1,1,.7]) static_face(top[0]);
    translate([18.8,0,2.35]) scale([1,1,.7]) static_face(top[1]);
    translate([28.8,0,2.35]) scale([1,1,.7]) static_face(top[2]);
    translate([38.8,0,2.35]) scale([1,1,.7]) static_face(top[3]);
    translate([48.8,0,2.35]) scale([1,1,.7]) static_face(top[4]);
    translate([58.8,0,2.35]) scale([1,1,.7]) static_face(top[5]);
    translate([68.8,0,2.35]) scale([1,1,.7]) static_face(top[6]);
    translate([78.8,0,2.35]) scale([1,1,.7]) static_face(top[7]);
    translate([88.8,0,2.35]) scale([1,1,.7]) static_face(top[8]);
    translate([98.8,0,2.35]) scale([1,1,.7]) static_face(top[9]);
    translate([108.8,0,2.35]) scale([1,1,.7]) static_face(top[10]);
    translate([118.8,0,2.35]) scale([0.6,1,.7]) static_face(14);
    translate([122.8,0,2.35]) scale([.82,1,.7]) diagonal_face(0);
  }
}

module 4x_staggered_diagonal_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 11, seed=seed);
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.5,0,2.35]) scale([.63,1,.7]) static_face(14);
    translate([3.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[0]);
    translate([13.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[1]);
    translate([23.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[2]);
    translate([33.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[3]);
    translate([43.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[4]);
    translate([53.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[5]);
    translate([63.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[6]);
    translate([73.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[7]);
    translate([83.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[8]);
    translate([93.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[9]);
    translate([103.8,0,2.35]) scale([1,1,.7]) rand_face(seed_vect[10]);
    translate([113.8,0,2.35]) scale([1.2,1,.7]) static_face(14);
    translate([122.9,0,2.4]) scale([.82,1,.7]) diagonal_face(0);
  }
}

module 4x_static_staggered_diagonal_top(top, manifold=-0.05) {
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.5,0,2.35]) scale([.63,1,.7]) static_face(14);
    translate([3.8,0,2.35]) scale([1,1,.7]) static_face(top[0]);
    translate([13.8,0,2.35]) scale([1,1,.7]) static_face(top[1]);
    translate([23.8,0,2.35]) scale([1,1,.7]) static_face(top[2]);
    translate([33.8,0,2.35]) scale([1,1,.7]) static_face(top[3]);
    translate([43.8,0,2.35]) scale([1,1,.7]) static_face(top[4]);
    translate([53.8,0,2.35]) scale([1,1,.7]) static_face(top[5]);
    translate([63.8,0,2.35]) scale([1,1,.7]) static_face(top[6]);
    translate([73.8,0,2.35]) scale([1,1,.7]) static_face(top[7]);
    translate([83.8,0,2.35]) scale([1,1,.7]) static_face(top[8]);
    translate([93.8,0,2.35]) scale([1,1,.7]) static_face(top[9]);
    translate([103.8,0,2.35]) scale([1,1,.7]) static_face(top[10]);
    translate([113.8,0,2.35]) scale([1.2,1,.7]) static_face(14);
    translate([122.9,0,2.4]) scale([.82,1,.7]) diagonal_face(0);
  }
}

rend=false;
random=true;
staggered=false;
render_top=false;
front=[46, 49, 3, 31, 21, 53];
back=[17, 61, 12, 33, 29, 50];
sides=[55, 34];
top=[19, 53, 25, 38];
seed_vect=rands(0, 100, 2);

if(rend) {
  if(random) {
    if(staggered) {
      4x_stagger_diagonal_line(seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 4x_staggered_diagonal_top(seed_vect[1]);
      }
    } else {
      4x_diagonal_line(seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 4x_diagonal_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      4x_static_stagger_diagonal_line(front, back, sides);
      if(render_top) {
        translate([0,0,7]) 4x_static_staggered_diagonal_top(top);
      }
    } else {
      4x_static_diagonal_line(front, back, sides);
      if(render_top) {
        translate([0,0,7]) 4x_static_diagonal_top(top);
      }
    }
  }
}
