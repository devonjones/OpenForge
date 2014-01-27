include <../floor_tile/smooth_floor.scad>

module smooth_edge_diagonal(x) {
  union() {
    difference() {
      smooth_floor(x,x);
      translate([25*x,0,-1]) rotate([0,0,45]) translate([0,-sqrt(169.28)/2,0]) cube([25*x*x,sqrt(((x*25+9.2)*(x*25+9.2)*2)),49]);
    }
    difference() {
      translate([25*x,0,0]) rotate([0,0,45]) translate([0,-sqrt(169.28)/2,0]) cube([sqrt(42.32),sqrt(((x*25+9.2)*(x*25+9.2)*2)),49]);
      translate([0,-10,-1]) cube([25*x+10,10,51]);
      translate([-10,0,-1]) cube([10,25*x+10,51]);
    }
  }
}

//smooth_edge_diagonal(1);

module smooth_diagonal_half_floor(x) {
  difference() {
    union() {
      smooth_floor(x,x);
      translate([25*x,0,0]) cube([9.2,25*x,9.5]);
      translate([0,25*x,0]) cube([25*x+9.2,9.2,9.5]);
    }

    translate([25*x,0,-1]) rotate([0,0,45]) translate([0,-sqrt(169.28)/2,0]) cube([sqrt(42.32)+1,sqrt(((x*25+9.2)*(x*25+9.2)*2)),20]);
    rotate([0,0,45]) translate([0,-25*x,-1]) cube([sqrt(x*25*x*25*2)/2+1,200,20]);
  }
}

//smooth_diagonal_half_floor(4);
