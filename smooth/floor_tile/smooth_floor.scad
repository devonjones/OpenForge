
module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module smooth_floor(x, y) {
  for (i = [0:(x-1)]) {
    for (j = [0:(y-1)]) {
      translate([25*i,j*25,0]) smooth_tile();
    }
  }
}

//smooth_floor(4,4);
