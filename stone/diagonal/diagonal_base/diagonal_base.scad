module base_diagonal(dim) {
  union() {
    difference() {
	   rotate([0,0,45]) translate([0,-6.51,0]) cube([sqrt(2*pow(dim*25, 2)),6.51,7.5]);
      translate([0,-20,-1]) cube(20,20,8.5);
      translate([dim*25,dim*25-12.5,-1]) cube(20,20,8.5);
    }
    rotate([0,0,45]) translate([1,-6.51,7.5]) difference() {
      cube([sqrt(2*pow(dim*25, 2))-2,5.8,3.7]);
      translate([1,5.8,-1]) rotate([0,0,180+45]) translate([0,-1,0]) cube(20,20,8.5);
      translate([sqrt(2*pow(dim*25, 2))-3,5.8,-1]) rotate([0,0,180+45]) translate([-1,0,0]) cube(20,20,8.5);
    }
    difference() {
      import(str("../../floor_tile/stone_floor_", dim, "x", dim, ".stl"));
      translate([0,-sqrt(84.7602),-1]) rotate([0,0,45]) cube([sqrt(2*pow(dim*25, 2))+25,dim*25,13]);
    }
  }
}

base_diagonal(4);

