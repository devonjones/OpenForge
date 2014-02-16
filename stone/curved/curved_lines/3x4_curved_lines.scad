include <forge_lib.scad>

//122.174796 A

module 3x4_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 26, seed=seed);
  
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([122.174796-2,8.2,7]);
    difference() {
      translate([-1,0,0]) cube([2,8.2,7]);
      translate([1,0,-1]) rotate([0,0,13.70696100407981+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1,1,1]) rand_face(seed_vect[0]);
      translate([11,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([21,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([31,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([41,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([51,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([61,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([71,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([81,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([91,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([101,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([111,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
    }
    translate([122.174796,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.17,0,0]) scale([1,1,1]) rand_face(seed_vect[12]);
      translate([11.17,0,0]) scale([1,1,1]) rand_face(seed_vect[13]);
      translate([21.17,0,0]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([31.17,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([41.17,0,0]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([51.17,0,0]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([61.17,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([71.17,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([81.17,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([91.17,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([101.17,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([111.17,0,0]) scale([1.3,1,1]) rand_face(seed_vect[23]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[24]);
    translate([122.174796-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[25]);
  }
}
      
module 3x4_static_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([122.174796-2,8.2,7]);
    difference() {
      translate([-1,0,0]) cube([2,8.2,7]);
      translate([1,0,-1]) rotate([0,0,13.70696100407981+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([1,1,1]) static_face(front[0]);
      translate([11,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([21,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([31,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([41,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([51,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([61,0,0]) scale([1,1,1]) static_face(front[6]);
      translate([71,0,0]) scale([1,1,1]) static_face(front[7]);
      translate([81,0,0]) scale([1,1,1]) static_face(front[8]);
      translate([91,0,0]) scale([1,1,1]) static_face(front[9]);
      translate([101,0,0]) scale([1,1,1]) static_face(front[10]);
      translate([111,0,0]) scale([1,1,1]) static_face(front[11]);
    }
    translate([122.174796,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.17,0,0]) scale([1,1,1]) static_face(back[0]);
      translate([11.17,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([21.17,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([31.17,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([41.17,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([51.17,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([61.17,0,0]) scale([1,1,1]) static_face(back[6]);
      translate([71.17,0,0]) scale([1,1,1]) static_face(back[7]);
      translate([81.17,0,0]) scale([1,1,1]) static_face(back[8]);
      translate([91.17,0,0]) scale([1,1,1]) static_face(back[9]);
      translate([101.17,0,0]) scale([1,1,1]) static_face(back[10]);
      translate([111.17,0,0]) scale([1.3,1,1]) static_face(back[11]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([122.174796-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
 
 
 

}

module 3x4_stagger_curved_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 28, seed=seed);
  translate([0,1,0]) scale([1,1,1+sc]) union() {
    translate([1,0,0]) cube([122.174796-2,8.2,7]);
    difference() {
      translate([-1,0,0]) cube([2,8.2,7]);
      translate([1,0,-1]) rotate([0,0,13.70696100407981+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
      translate([6,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
      translate([16,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
      translate([26,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
      translate([36,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
      translate([46,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
      translate([56,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([66,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
      translate([76,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
      translate([86,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
      translate([96,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
      translate([106,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
      translate([116,0,0]) scale([.5,1,1]) rand_face(seed_vect[12]);
    }
    translate([122.174796,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.17,0,0]) scale([.5,1,1]) rand_face(seed_vect[13]);
      translate([6.17,0,0]) scale([1,1,1]) rand_face(seed_vect[14]);
      translate([16.17,0,0]) scale([1,1,1]) rand_face(seed_vect[15]);
      translate([26.17,0,0]) scale([1,1,1]) rand_face(seed_vect[16]);
      translate([36.17,0,0]) scale([1,1,1]) rand_face(seed_vect[17]);
      translate([46.17,0,0]) scale([1,1,1]) rand_face(seed_vect[18]);
      translate([56.17,0,0]) scale([1,1,1]) rand_face(seed_vect[19]);
      translate([66.17,0,0]) scale([1,1,1]) rand_face(seed_vect[20]);
      translate([76.17,0,0]) scale([1,1,1]) rand_face(seed_vect[21]);
      translate([86.17,0,0]) scale([1,1,1]) rand_face(seed_vect[22]);
      translate([96.17,0,0]) scale([1,1,1]) rand_face(seed_vect[23]);
      translate([106.17,0,0]) scale([1,1,1]) rand_face(seed_vect[24]);
      translate([116.17,0,0]) scale([.8,1,1]) rand_face(seed_vect[25]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) rand_face(seed_vect[26]);
    translate([122.174796-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[27]);
  }
}

module 3x4_static_stagger_curved_line(front, back, side, manifold=-0.05) {
  translate([0,1,0]) scale([1,1,1]) union() {
    translate([1,0,0]) cube([122.174796-2,8.2,7]);
    difference() {
      translate([-1,0,0]) cube([2,8.2,7]);
      translate([1,0,-1]) rotate([0,0,13.70696100407981+90]) cube([10.2,10.2,9]);
    }
    translate([0,-manifold,0]) union() {
      translate([1,0,0]) scale([.5,1,1]) static_face(front[0]);
      translate([6,0,0]) scale([1,1,1]) static_face(front[1]);
      translate([16,0,0]) scale([1,1,1]) static_face(front[2]);
      translate([26,0,0]) scale([1,1,1]) static_face(front[3]);
      translate([36,0,0]) scale([1,1,1]) static_face(front[4]);
      translate([46,0,0]) scale([1,1,1]) static_face(front[5]);
      translate([56,0,0]) scale([1,1,1]) static_face(front[6]);
      translate([66,0,0]) scale([1,1,1]) static_face(front[7]);
      translate([76,0,0]) scale([1,1,1]) static_face(front[8]);
      translate([86,0,0]) scale([1,1,1]) static_face(front[9]);
      translate([96,0,0]) scale([1,1,1]) static_face(front[10]);
      translate([106,0,0]) scale([1,1,1]) static_face(front[11]);
      translate([116,0,0]) scale([.5,1,1]) static_face(front[12]);
    }
    translate([122.174796,8.2+manifold,0]) rotate([0,0,180]) union() {
      translate([1.17,0,0]) scale([.5,1,1]) static_face(back[0]);
      translate([6.17,0,0]) scale([1,1,1]) static_face(back[1]);
      translate([16.17,0,0]) scale([1,1,1]) static_face(back[2]);
      translate([26.17,0,0]) scale([1,1,1]) static_face(back[3]);
      translate([36.17,0,0]) scale([1,1,1]) static_face(back[4]);
      translate([46.17,0,0]) scale([1,1,1]) static_face(back[5]);
      translate([56.17,0,0]) scale([1,1,1]) static_face(back[6]);
      translate([66.17,0,0]) scale([1,1,1]) static_face(back[7]);
      translate([76.17,0,0]) scale([1,1,1]) static_face(back[8]);
      translate([86.17,0,0]) scale([1,1,1]) static_face(back[9]);
      translate([96.17,0,0]) scale([1,1,1]) static_face(back[10]);
      translate([106.17,0,0]) scale([1,1,1]) static_face(back[11]);
      translate([116.17,0,0]) scale([.8,1,1]) static_face(back[12]);
    }
    rotate([0,0,20.09523119190482]) translate([1-manifold,8.2,0]) rotate([0,0,270]) scale([.82,1,1]) static_face(side[0]);
    translate([122.174796-1+manifold,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 3x4_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 9, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1,1,1]) rand_face(seed_vect[0]);
    translate([11,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([21,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([31,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([41,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([51,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([61,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
    translate([71,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([81,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([91,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([101,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([111,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
  }
}

module 3x4_static_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([1,1,1]) static_face(top[0]);
    translate([11,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([21,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([31,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([41,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([51,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([61,0,0]) scale([1,1,1]) static_face(top[6]);
    translate([71,0,0]) scale([1,1,1]) static_face(top[7]);
    translate([81,0,0]) scale([1,1,1]) static_face(top[8]);
    translate([91,0,0]) scale([1,1,1]) static_face(top[9]);
    translate([101,0,0]) scale([1,1,1]) static_face(top[10]);
    translate([111,0,0]) scale([1,1,1]) static_face(top[10]);
  }
}

module 3x4_staggered_curved_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 13, seed=seed);
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) rand_face(seed_vect[0]);
    translate([6,0,0]) scale([1,1,1]) rand_face(seed_vect[1]);
    translate([16,0,0]) scale([1,1,1]) rand_face(seed_vect[2]);
    translate([26,0,0]) scale([1,1,1]) rand_face(seed_vect[3]);
    translate([36,0,0]) scale([1,1,1]) rand_face(seed_vect[4]);
    translate([46,0,0]) scale([1,1,1]) rand_face(seed_vect[5]);
    translate([56,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
    translate([66,0,0]) scale([1,1,1]) rand_face(seed_vect[7]);
    translate([76,0,0]) scale([1,1,1]) rand_face(seed_vect[8]);
    translate([86,0,0]) scale([1,1,1]) rand_face(seed_vect[9]);
    translate([96,0,0]) scale([1,1,1]) rand_face(seed_vect[10]);
    translate([106,0,0]) scale([1,1,1]) rand_face(seed_vect[11]);
    translate([116,0,0]) scale([.5,1,1]) rand_face(seed_vect[12]);
  }
}

module 3x4_static_staggered_curved_top(top, manifold=-0.05) {
  translate([0,1,manifold]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
    translate([1,0,0]) scale([.5,1,1]) static_face(top[0]);
    translate([6,0,0]) scale([1,1,1]) static_face(top[1]);
    translate([16,0,0]) scale([1,1,1]) static_face(top[2]);
    translate([26,0,0]) scale([1,1,1]) static_face(top[3]);
    translate([36,0,0]) scale([1,1,1]) static_face(top[4]);
    translate([46,0,0]) scale([1,1,1]) static_face(top[5]);
    translate([56,0,0]) scale([1,1,1]) static_face(top[6]);
    translate([66,0,0]) scale([1,1,1]) static_face(top[7]);
    translate([76,0,0]) scale([1,1,1]) static_face(top[8]);
    translate([86,0,0]) scale([1,1,1]) static_face(top[9]);
    translate([96,0,0]) scale([1,1,1]) static_face(top[10]);
    translate([106,0,0]) scale([1,1,1]) static_face(top[11]);
    translate([116,0,0]) scale([.5,1,1]) static_face(top[12]);
  }
}

//seed_vect = rands(0, 100, 2);
//3x4_curved_line(0, seed_vect[0]);
//3x4_stagger_curved_line(0, seed_vect[0]);
//translate([0,0,7]) 3x4_curved_top(seed_vect[0]);
//translate([0,0,7]) 3x4_staggered_curved_top(seed_vect[0]);
