module stone_curved_half_floor(x,y) {
  difference() {
    import(str("../floor_tile/stone_floor_",x,"x",y,".stl"));
    translate([0,0,-1]) scale([x/y,1,1]) cylinder(49,25*y+1,25*y+1);
  }
}

stone_curved_half_floor(4,4);

/*
x=4;
y=3;
difference() {
  translate([100,0,0]) rotate([0,0,90]) import(str("../floor_tile/stone_floor_",y,"x",x,".stl"));
  translate([0,0,-1]) scale([x/y,1,1]) cylinder(49,25*y+1,25*y+1);
}
*/