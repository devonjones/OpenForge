module face(tr, sc, rt) {
  intersection() {
    translate([5+tr[0],2+tr[1],3.5+tr[2]]) scale([2.8+sc[0],2.8+sc[1],4+sc[2]]) rotate([-26+rt[0],0+rt[1],0+rt[2]]) child(0);
    translate([-1,-3,-1]) cube([12,3,9]);
  }
}

module wall_block_import(num=false) {
  import(str("wall_block_", num, ".stl"));
}

module faces(set=false) {
  if (set == 0) {
    face([0,-.14,-0.25],[-0.1,0,-0.1],[0,0,0]) wall_block_import(1);
  } else if (set == 1) {
    face([0,-.28,0.2],[-0.1,0,-0.5],[90,0,0]) wall_block_import(1);
  } else if (set == 2) {
    face([0,-0.21,0.15],[0,0,0],[180,0,4]) wall_block_import(1);
  } else if (set == 3) {
    face([-0.1,-0.54,-0.1],[-0.05,0,-0.3],[-90,-3,0]) wall_block_import(1);
  } else if (set == 4) {
    face([-0.2,0,-0.22],[-0.15,0.07,0],[0,0,0]) wall_block_import(2);
  } else if (set == 5) {
    face([-0.04,-0.22,0.27],[-0.21,0,-0.4],[90,0,0]) wall_block_import(2);
  } else if (set == 6) {
    face([-0.23,-0.44,0.15],[-0.13,0,-0.1],[180,0,0]) wall_block_import(2);
  } else if (set == 7) {
    face([-0.15,-0.59,-0.1],[-0.05,0,-0.35],[-90,0,0]) wall_block_import(2);
  } else if (set == 8) {
    face([0.05,-0.09,-0.2],[-0.15,0,-0.1],[0,0,0]) wall_block_import(3);
  } else if (set == 9) {
    face([0,-0.29,0.2],[-0.3,0,-0.35],[90,0,0]) wall_block_import(3);
  } else if (set == 10) {
    face([0,-0.49,0.1],[-0.35,0,-0.1],[180,0,0]) wall_block_import(3);
  } else if (set == 11) {
    face([0,-0.54,-0.2],[-0.26,0,-0.25],[-90,0,0]) wall_block_import(3);
  } else if (set == 12) {
    face([0,-0.12,-0.2],[0.15,0,-0.15],[0,0,0]) wall_block_import(4);
  } else if (set == 13) {
    face([0.1,-0.3,0.25],[0.1,0,-0.45],[90,0,0]) wall_block_import(4);
  } else if (set == 14) {
    face([-0.2,-0.39,0.15],[0.1,0,0],[180,0,0]) wall_block_import(4);
  } else if (set == 15) {
    face([-0.1,-0.58,0],[0,0,-0.2],[-90,0,0]) wall_block_import(4);
  } else if (set == 16) {
    face([0.1,.41,-0.25],[0.25,0.07,-0.2],[0,0,0]) wall_block_import(5);
  } else if (set == 17) {
    face([.1,-.11,0.2],[0.2,0,-0.56],[90,0,0]) wall_block_import(5);
  } else if (set == 18) {
    face([0,.16,-0.31],[0.4,0,-0.3],[180,-6,0]) wall_block_import(5);
  } else if (set == 19) {
    face([-0.15,-0.00,0.14],[0.25,0,-0.46],[-90,0,0]) wall_block_import(5);
  } else if (set == 20) {
    face([-0.35,0,-0.2],[-0.1,0.15,0],[0,0,0]) wall_block_import(6);
  } else if (set == 21) {
    face([-0.2,-0.3,0.1],[-0.1,0,-0.4],[90,0,0]) wall_block_import(6);
  } else if (set == 22) {
    face([-0.2,-0.06,0.1],[0,0,0],[180,0,0]) wall_block_import(6);
  } else if (set == 23) {
    face([-0.35,-0.24,0],[0.1,0,-0.2],[-90,0,0]) wall_block_import(6);
  } else if (set == 24) {
    face([-0.25,0.38,-0.3],[0.05,0,0.3],[0,0,0]) wall_block_import(7);
  } else if (set == 25) {
    face([-0.2,0.01,0.4],[-0.12,0,-0.5],[90,0,0]) wall_block_import(7);
  } else if (set == 26) {
    face([-0.25,-0.07,0.2],[0,0,0.1],[180,-2,0]) wall_block_import(7);
  } else if (set == 27) {
    face([-0.2,-0.61,-0.2],[0,0,-0.45],[-90,0,0]) wall_block_import(7);
  } else if (set == 28) {
    face([0,-0.11,0],[-0.15,0,-0.3],[0,0,0]) wall_block_import(8);
  } else if (set == 29) {
    face([0,-0.19,0],[-0.3,0,-0.5],[90,0,0]) wall_block_import(8);
  } else if (set == 30) {
    face([0,-0.23,0.2],[-0.3,0,-0.1],[180,0,0]) wall_block_import(8);
  } else if (set == 31) {
    face([-0.1,-0.24,-0.1],[-0.1,0,-0.05],[-93,0,0]) wall_block_import(8);
  }
}

// For testing blocks
//faces(19=true);
//#translate([0,0,0]) cube([10,1,7]);  // For testing placement of face
//#translate([0,-1,0]) cube([10,1,7]);  // For ensuring faces are no more then 1 mm thick

module wall_block_diagonal_import(num) {
  import(str("wall_block_diagonal_", num, ".stl"));
}

module diagonal_faces(set) {
  if (set == 0) {
    face([-1.4,0,-0.3],[0.8,0.03,0],[0,0,0]) wall_block_diagonal_import(1);
  } else if (set == 1) {
    face([-1.8,0,0],[1.2,0,-0.35],[0,90,0]) wall_block_diagonal_import(1);
  }
}

// For testing blocks
//diagonal_faces(0);
//#translate([0,0,0]) cube([7,1,7]);  // For testing placement of face
//#translate([0,-1,0]) cube([7,1,7]);  // For ensuring faces are no more then 1 mm thick
