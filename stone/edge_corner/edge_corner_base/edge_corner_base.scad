
module edge_corner_base(dim) {
  union() {
    translate([0,dim*25,0]) cube([dim*25+9.2,9.2,7.5]);
    translate([1,dim*25,7.5]) cube([dim*25+7.2,8.2,3.7]);
    translate([0,0,0]) cube([9.2,dim*25,7.5]);
    translate([1,1,7.5]) cube([8.2,dim*25-1,3.7]);
    translate([9.2,0,0]) import(str("../../floor_tile/stone_floor_",dim,"x",dim,".stl"));
  }
}

//edge_corner_base(4);