module rand_face(seed) {
  num = floor(rands(0,32,1,seed=seed)[0]);
  static_face(num);
}

module static_face(num) {
  echo(num);
  filename = str("../faces/face_", num < 32 ? num : num - 32, ".stl");
  echo(filename);
  if (num < 32) {
    import(filename);
  } else {
    translate([10,0,7]) rotate([0,180,0]) import(filename);
  }
}

module diagonal_face(num) {
  echo(num);
  filename = str("../faces/face_diagonal_", num < 2 ? num : num - 2, ".stl");
  echo(filename);
  if (num < 2) {
    import(filename);
  } else {
    translate([7,0,7]) rotate([0,180,0]) import(filename);
  }
}

