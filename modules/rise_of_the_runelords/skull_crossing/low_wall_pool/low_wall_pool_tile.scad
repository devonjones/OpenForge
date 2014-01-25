module curved_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        hull() {
          translate([0,0,5]) cylinder(20,50,50);
          translate([0,0,6]) cylinder(20,49,49);
        }
        translate([0,0,6]) cylinder(35,45,45);
      }
      translate([-50,-50,0]) cube([50,100,50]);
      translate([-1,-50,0]) cube([52,50,50]);
    }
  }
}

module half_curved_low_wall_pool_left() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      scale([0.5,1,1]) translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        scale([0.5,1,1]) hull() {
          translate([0,0,5]) cylinder(20,50,50);
          translate([0,0,6]) cylinder(20,49,49);
        }
        scale([0.44444,1,1]) translate([0,0,6]) cylinder(25,45,45);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module half_curved_low_wall_pool_right() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      scale([1,0.5,1]) translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        scale([1,0.5,1]) hull() {
          translate([0,0,5]) cylinder(20,50,50);
          translate([0,0,6]) cylinder(20,49,49);
        }
        scale([1,0.44444,1]) translate([0,0,6]) cylinder(25,45,45);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module straight_low_wall_pool() {
  union() {
    cube([50,50,6]);
    hull() {
      translate([0,45,6]) cube([50,5,20]);
      translate([0,45,6]) cube([50,4,21]);
    }
  }
}

module half_straight_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([26,52,7]);
    }
    hull() {
      translate([20,0,6]) cube([5,50,20]);
      translate([20,0,6]) cube([4,50,21]);
    }
  }
}

module low_wall() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
    }
    hull() {
      translate([45,0,6]) cube([5,50,25]);
      translate([45,0,6]) cube([4,50,26]);
    }
  }
}

module corner_low_wall_pool() {
  union() {
    cube([50,50,6]);
    difference() {
      hull() {
        translate([0,0,6]) cube([50,50,20]);
        translate([0,0,6]) cube([49,49,21]);
      }
      translate([-1,-1,6]) cube([46,46,23]);
    }
  }
}

module corner_nub_low_wall_pool() {
  union() {
    cube([50,50,6]);
    union() {
      hull() {
        translate([0,45,6]) cube([5,5,20]);
        translate([0,45,6]) cube([5,4,21]);
      }
      hull() {
        translate([0,45,6]) cube([5,5,20]);
        translate([1,45,6]) cube([4,5,21]);
      }
    }
  }
}
