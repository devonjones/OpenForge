module pool() {
  cube([50,50,6]);
}

module curved_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        hull() {
          translate([0,0,5]) cylinder(6,50,50);
          translate([0,0,6]) cylinder(6,49,49);
        }
        translate([0,0,6]) cylinder(15,45,45);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module half_curved_pool_left() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      scale([0.5,1,1]) translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        scale([0.5,1,1]) hull() {
          translate([0,0,5]) cylinder(6,50,50);
          translate([0,0,6]) cylinder(6,49,49);
        }
        scale([0.44444,1,1]) translate([0,0,6]) cylinder(15,45,45);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module half_curved_pool_right() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      scale([1,0.5,1]) translate([0,0,5]) cylinder(7,50,50);
    }
    difference() {
      difference() {
        scale([1,0.5,1]) hull() {
          translate([0,0,5]) cylinder(6,50,50);
          translate([0,0,6]) cylinder(6,49,49);
        }
        scale([1,0.44444,1]) translate([0,0,6]) cylinder(15,45,45);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module straight_pool() {
  union() {
    cube([50,50,6]);
    hull() {
      translate([0,45,6]) cube([50,5,5]);
      translate([0,45,6]) cube([50,4,6]);
    }
  }
}

module half_straight_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([26,52,7]);
    }
    hull() {
      translate([20,0,6]) cube([5,50,5]);
      translate([20,0,6]) cube([4,50,6]);
    }
  }
}

module half_corner_pool_left() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([52,26,7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) cube([50,25,5]);
        translate([1,0,6]) cube([49,24,6]);
      }
      translate([5,-1,5]) cube([46,21,8]);
    }
  }
}

module half_corner_pool_right() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([51,26,7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) cube([50,25,5]);
        translate([0,0,6]) cube([49,24,6]);
      }
      translate([-1,-1,5]) cube([46,21,8]);
    }
  }
}

module quarter_corner_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([26,26,7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) cube([25,25,5]);
        translate([0,0,6]) cube([24,24,6]);
      }
      translate([-1,-1,5]) cube([21,21,8]);
    }
  }
}

module quarter_curved_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cylinder(15,25,25);
    }
    difference() {
      difference() {
        hull() {
          translate([0,0,5]) cylinder(6,25,25);
          translate([0,0,6]) cylinder(6,24,24);
        }
        translate([0,0,6]) cylinder(15,20,20);
      }
      translate([-50,-50,0]) cube([50,100,30]);
      translate([-1,-50,0]) cube([52,50,30]);
    }
  }
}

module pool_stairs() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([-1,-1,6]) cube([26,52,7]);
    }
    translate([17,0,6]) cube([8,50,4.5]);
    translate([9,0,6]) cube([8,50,2.5]);
  }
}

module corner_pool() {
  union() {
    cube([50,50,6]);
    difference() {
      hull() {
        translate([0,0,6]) cube([50,50,5]);
        translate([0,0,6]) cube([49,49,6]);
      }
      translate([-1,-1,6]) cube([46,46,7]);
    }
  }
}

module corner_nub_pool() {
  union() {
    cube([50,50,6]);
    union() {
      hull() {
        translate([0,45,6]) cube([5,5,5]);
        translate([0,45,6]) cube([5,4,6]);
      }
      hull() {
        translate([0,45,6]) cube([5,5,5]);
        translate([1,45,6]) cube([4,5,6]);
      }
    }
  }
}

module 2_corner_nub_pool() {
  union() {
    cube([50,50,6]);
    union() {
      hull() {
        translate([0,45,6]) cube([5,5,5]);
        translate([0,45,6]) cube([5,4,6]);
      }
      hull() {
        translate([0,45,6]) cube([5,5,5]);
        translate([1,45,6]) cube([4,5,6]);
      }
      hull() {
        translate([0,0,6]) cube([5,5,5]);
        translate([0,1,6]) cube([5,4,6]);
      }
      hull() {
        translate([0,0,6]) cube([5,5,5]);
        translate([1,0,6]) cube([4,5,6]);
      }
    }
  }
}

module half_diagonal_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,0,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),7]);
    }
    difference() {
      hull() {
        translate([0,0,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),5]);
        translate([0,sqrt(2),6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),6]);
      }
      translate([-110,0,0]) cube([110,110,20]);
      translate([0,50,0]) cube([110,110,20]);
      translate([0,sqrt(50),5]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),8]);
    }
  }
}

module quarter_diagonal_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,25,6]) rotate([0,0,45]) translate([0,0,0]) cube([sqrt(5000),sqrt(5000),7]);
    }
    difference() {
      hull() {
        translate([0,25,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),5]);
        translate([0,sqrt(2)+25,6]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),6]);
      }
      translate([-110,25,0]) cube([110,110,20]);
      translate([0,50,0]) cube([110,110,20]);
      translate([0,sqrt(50)+25,5]) rotate([0,0,45]) cube([sqrt(5000),sqrt(5000),8]);
    }
  }
}

module three_quarter_diagonal_pool() {
  union() {
    difference() {
      import("../floor_tile/stone_floor_2x2.stl");
      translate([0,-30,6]) rotate([0,0,45]) translate([0,0,0]) cube([100,sqrt(5000),7]);
    }
    difference() {
      hull() {
        translate([0,-30,6]) rotate([0,0,45]) cube([100,sqrt(5000),5]);
        translate([0,sqrt(2)-30,6]) rotate([0,0,45]) cube([100,sqrt(5000),6]);
      }
      translate([-110,-30,0]) cube([110,110,20]);
      translate([-1,-110,0]) cube([110,110,20]);
      translate([50,0,0]) cube([110,110,20]);
      translate([0,sqrt(50)-30,5]) rotate([0,0,45]) cube([100,sqrt(5000),8]);
    }
  }
}

three_quarter_diagonal_pool();