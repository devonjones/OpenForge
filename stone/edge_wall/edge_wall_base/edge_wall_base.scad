module edge_wall_base(x,y) {
  union() {
    translate([0,25*y,0]) cube([25*x,10.2,7.5]);
    translate([1,25*y+1,7.5]) cube([25*x-2,8.2,3.7]);
    import(str("../../floor_tile/stone_floor_",x,"x",y,".stl"));
  }
}

//edge_wall_base(4,4);

/*
x=4;
y=3;
union() {
  translate([0,25*y,0]) cube([25*x,10.2,7.5]);
  translate([1,25*y+1,7.5]) cube([25*x-2,8.2,3.7]);
  translate([100,0,0]) rotate([0,0,90])import(str("../../floor_tile/stone_floor_",y,"x",x,".stl"));
}
*/