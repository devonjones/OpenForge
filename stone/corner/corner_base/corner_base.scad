
module corner_base(dim) {
  union() {
    translate([0,dim*25 - 9.2,0]) cube([dim*25,9.2,7.5]);
    translate([1,dim*25 - 9.2,7.5]) cube([dim*25-2,8.2,3.7]);
    translate([0,0,0]) cube([9.2,dim*25,7.5]);
    translate([1,1,7.5]) cube([8.2,dim*25-2,3.7]);
    difference() {
      import(str("../../floor_tile/stone_floor_",dim,"x",dim,".stl"));
      translate([-1,dim*25-9.2,-1]) cube([dim*25+2,10.2,13]);
      translate([-1,-1,-1]) cube([10.2,dim*25 +2,13]);
    }
  }
}

//corner_base(4);