include <forge_lib.scad>

module 1x_diagonal_line(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  rotate([0,0,45]) union() {

    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(1058),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(25, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([7,0,0]) scale([0.95,1,1]) rand_face(seed_vect[0]);
        translate([16.5,0,0]) scale([0.95,1,1]) rand_face(seed_vect[1]);
      }
      translate([0,manifold,0]) union() {
        translate([16.9,5.8,0]) scale([1.56,1,1]) rotate([0,0,180]) rand_face(seed_vect[2]);
        translate([32.5,5.8,0]) scale([1.56,1,1]) rotate([0,0,180]) rand_face(seed_vect[3]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) rand_face(seed_vect[4]);
      translate([sqrt(1058)-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) rand_face(seed_vect[5]);
    }
  }
}
      
module 1x_static_diagonal_line(front, back, side, manifold=-0.05) {
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(1058),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(25, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([7,0,0]) scale([0.95,1,1]) static_face(front[0]);
        translate([16.5,0,0]) scale([0.95,1,1]) static_face(front[1]);
      }
      translate([0,manifold,0]) union() {
        translate([16.9,5.8,0]) scale([1.56,1,1]) rotate([0,0,180]) static_face(back[0]);
        translate([32.5,5.8,0]) scale([1.56,1,1]) rotate([0,0,180]) static_face(back[1]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) static_face(side[0]);
      translate([sqrt(1058)-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) static_face(side[1]);
    }
  }
}

module 1x_stagger_diagonal_line(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(1058),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(25, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([12,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
        translate([12,0,0]) scale([0.95,1,1]) rand_face(seed_vect[1]);
        translate([26.5,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) rand_face(seed_vect[2]);
      }
      translate([0,manifold,0]) union() {
        translate([12.2,5.8,0]) rotate([0,0,180]) scale([1.1,1,1]) rand_face(seed_vect[3]);
        translate([21.6,5.8,0]) scale([0.95,1,1]) rotate([0,0,180]) rand_face(seed_vect[4]);
        translate([32.4,5.8,0]) rotate([0,0,180]) scale([1.1,1,1]) rand_face(seed_vect[5]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) rand_face(seed_vect[6]);
      translate([sqrt(1058)-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) rand_face(seed_vect[7]);
    }
  }
}

module 1x_static_stagger_diagonal_line(front, back, side, manifold=-0.05) {
  rotate([0,0,45]) union() {
    translate([1,-6.51,0]) union() {
      difference() {
        cube([sqrt(1058),5.8,7]);
        translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
        translate([sqrt(2*pow(25, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
      }
      translate([0,-manifold,0]) union() {
        translate([12,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[0]);
        translate([12,0,0]) scale([0.95,1,1]) static_face(front[1]);
        translate([26.5,0,0]) rotate([0,270,0]) scale([7/10,1,5/7]) static_face(front[2]);
      }
      translate([0,manifold,0]) union() {
        translate([12.2,5.8,0]) rotate([0,0,180]) scale([1.1,1,1]) static_face(back[0]);
        translate([21.6,5.8,0]) scale([0.95,1,1]) rotate([0,0,180]) static_face(back[1]);
        translate([32.4,5.8,0]) rotate([0,0,180]) scale([1.1,1,1]) static_face(back[2]);
      }
      translate([1-manifold,5.8-manifold,0]) rotate([0,0,-45]) scale([.81,1,1]) static_face(side[0]);
      translate([sqrt(1058)-5.9+manifold,0-manifold,0]) rotate([0,0,45]) scale([.81,1,1]) static_face(side[1]);
    }
  }
}

module 1x_diagonal_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 4, seed=seed);
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.2,0,2.35]) scale([1.05,1,.7]) static_face(13);
    translate([8.3,0,2.35]) scale([1.05,1,.7]) static_face(14);
    translate([16.85,0,2.35]) scale([.82,1,.7]) diagonal_face(0);
  }
}

module 1x_static_diagonal_top(top, manifold=-0.05) {
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.2,0,2.35]) scale([1.05,1,.7]) static_face(13);
    translate([8.3,0,2.35]) scale([1.05,1,.7]) static_face(14);
    translate([16.85,0,2.35]) scale([.82,1,.7]) diagonal_face(0);
  }
}

module 1x_staggered_diagonal_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 4, seed=seed);
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.5,0,2.35]) scale([.63,1,.7]) static_face(14);

    translate([3.7,0,2.35]) scale([0.95,1,.7]) rand_face(seed_vect[0]);

    translate([13.1,0,2.35]) scale([.63,1,.7]) static_face(14);
    translate([17,0,2.4]) scale([.82,1,.7]) diagonal_face(0);
  }
}

module 1x_static_staggered_diagonal_top(top, manifold=-0.05) {
  translate([sqrt(169.28),0,manifold]) rotate([-90,0,45]) scale([1,1,8.2/7]) union() {
    translate([-5.65,0,2.35]) scale([.78,1,.7]) diagonal_face(1);
    translate([-2.5,0,2.35]) scale([.63,1,.7]) static_face(14);

    translate([3.7,0,2.35]) scale([0.95,1,.7]) static_face(top[0]);

    translate([13.1,0,2.35]) scale([.63,1,.7]) static_face(14);
    translate([17,0,2.4]) scale([.82,1,.7]) diagonal_face(0);
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
      1x_stagger_diagonal_line(seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 1x_staggered_diagonal_top(seed_vect[1]);
      }
    } else {
      1x_diagonal_line(seed_vect[0]);
      if(render_top) {
        translate([0,0,7]) 1x_diagonal_top(seed_vect[1]);
      }
    }
  } else {
    if(staggered) {
      1x_static_stagger_diagonal_line(front, back, sides);
      if(render_top) {
        translate([0,0,7]) 1x_static_staggered_diagonal_top(top);
      }
    } else {
      1x_static_diagonal_line(front, back, sides);
      if(render_top) {
        translate([0,0,7]) 1x_static_diagonal_top(top);
      }
    }
  }
}
