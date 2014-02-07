module curved_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        hull() {
          translate([0,0,5]) cylinder(16,50,50);
          translate([0,0,6]) cylinder(16,49,49);
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
          translate([0,0,5]) cylinder(16,50,50);
          translate([0,0,6]) cylinder(16,49,49);
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
          translate([0,0,5]) cylinder(16,50,50);
          translate([0,0,6]) cylinder(16,49,49);
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
      translate([0,45,6]) cube([50,5,15]);
      translate([0,45,6]) cube([50,4,16]);
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
      translate([20,0,6]) cube([5,50,15]);
      translate([20,0,6]) cube([4,50,16]);
    }
  }
}

module half_corner_low_wall_pool_left() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([52,26,7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) cube([50,25,15]);
        translate([1,0,6]) cube([49,24,16]);
      }
      translate([5,-1,5]) cube([46,21,18]);
    }
  }
}

module half_corner_low_wall_pool_right() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([51,26,7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) cube([50,25,15]);
        translate([0,0,6]) cube([49,24,16]);
      }
      translate([-1,-1,5]) cube([46,21,18]);
    }
  }
}

module quarter_corner_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([26,26,7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) cube([25,25,15]);
        translate([0,0,6]) cube([24,24,16]);
      }
      translate([-1,-1,5]) cube([21,21,18]);
    }
  }
}

module quarter_curved_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cylinder(15,25,25);
    }
    difference() {
      difference() {
        hull() {
          translate([0,0,5]) cylinder(16,25,25);
          translate([0,0,6]) cylinder(16,24,24);
        }
        translate([0,0,6]) cylinder(17,20,20);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module corner_low_wall_pool() {
  union() {
    cube([50,50,6]);
    difference() {
      hull() {
        translate([0,0,6]) cube([50,50,15]);
        translate([0,0,6]) cube([49,49,16]);
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
        translate([0,45,6]) cube([5,5,15]);
        translate([0,45,6]) cube([5,4,16]);
      }
      hull() {
        translate([0,45,6]) cube([5,5,15]);
        translate([1,45,6]) cube([4,5,16]);
      }
    }
  }
}

module 2_corner_nub_low_wall_pool() {
  union() {
    cube([50,50,6]);
    union() {
      hull() {
        translate([0,45,6]) cube([5,5,15]);
        translate([0,45,6]) cube([5,4,16]);
      }
      hull() {
        translate([0,45,6]) cube([5,5,15]);
        translate([1,45,6]) cube([4,5,16]);
      }
      hull() {
        translate([0,0,6]) cube([5,5,15]);
        translate([0,1,6]) cube([5,4,16]);
      }
      hull() {
        translate([0,0,6]) cube([5,5,15]);
        translate([1,0,6]) cube([4,5,16]);
      }
    }
  }
}

module half_diagonal_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,0,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),15]);
        translate([0,sqrt(2),6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),16]);
      }
      translate([-110,0,0]) cube([110,110,25]);
      translate([0,50,0]) cube([110,110,25]);
      translate([0,sqrt(50),5]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),18]);
    }
  }
}

module quarter_diagonal_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,25,6]) rotate([0,0,45]) translate([0,0,0]) cube([sqrt(5000),sqrt(5000),7]);
    }
    difference() {
      hull() {
        translate([0,25,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),15]);
        translate([0,sqrt(2)+25,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),16]);
      }
      translate([-110,25,0]) cube([110,110,25]);
      translate([0,50,0]) cube([110,110,25]);
      translate([0,sqrt(50)+25,5]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),18]);
    }
  }
}

module three_quarter_diagonal_low_wall_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,-25,6]) rotate([0,0,45]) translate([0,0,0]) cube([100,sqrt(5000),7]);
    }
    difference() {
      hull() {
        translate([0,-25,6]) rotate([0,0,45]) cube([100,sqrt(5000),15]);
        translate([0,sqrt(2)-25,6]) rotate([0,0,45]) cube([100,sqrt(5000),16]);
      }
      translate([-110,-30,0]) cube([110,110,25]);
      translate([-1,-110,0]) cube([110,110,25]);
      translate([50,0,0]) cube([110,110,25]);
      translate([0,sqrt(50)-25,5]) rotate([0,0,45]) cube([100,sqrt(5000),18]);
    }
  }
}

module low_wall() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
    }
    hull() {
      translate([45,0,6]) cube([5,50,15]);
      translate([45,0,6]) cube([4,50,16]);
    }
  }
}
