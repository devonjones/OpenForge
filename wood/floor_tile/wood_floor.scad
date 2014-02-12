module wood_face(face_num) {
  translate([.325,.325,0]) cube([24.35,24.35,2]);
  if (face_num % 2 == 0) {
    echo(str("wood/wood_floor_h_", face_num/2, ".dat"));
    translate([.325,.325,2]) scale([24.5 / 160, 24.5 / 160, 2 / 256]) surface(file = str("wood/wood_floor_h_", face_num/2, ".dat"), convexity = 5);
  } else {
    echo(str("wood/wood_floor_v_", floor(face_num/2), ".dat"));
    translate([.325,.325,2]) scale([24.5 / 160, 24.5 / 160, 2 / 256]) surface(file = str("wood/wood_floor_v_", floor(face_num/2), ".dat"), convexity = 5);
  }
}

module wood_tile(face_num) {
 cube([25,25,7.5]);
 translate([0,0,7.5]) wood_face(face_num);
}

module wood_tile_row(start, len) {
  for (i = [start:start+len]) {
    translate([25*(i-start),0,0]) wood_tile(i);
  }
}

module wood_floor(x, y) {
  for (i = [0:(x-1)]) {
    echo(str(i*5));
    for (j = [0:(y-1)]) {
      translate([25*i,j*25,0]) wood_tile(i*5+j);
    }
  }
}

//wood_floor(4,4);
