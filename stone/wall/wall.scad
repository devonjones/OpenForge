module wall(x,y) {
  union() {
    import(str("wall_base/wall_base_",x,"x",y,".stl"));
    translate([0,25*y-10.2,10.5]) import(str("wall_back/wall_back_",x,"x.stl"));
  }
}

//wall(2,1);