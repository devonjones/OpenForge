include <forge_lib.scad>

module right_top_chunk() {
  cube([6.6,8.2,7]);
  scale([.66,1,1]) static_face(45);
  translate([0,0,6.95]) rotate([-90,0,0]) scale([.66,1,8.2/7]) static_face(33);
}

module left_top_chunk() {
  cube([6.6,8.2,7]);
  translate([6.6,8.15,0]) rotate([0,0,180]) scale([.66,1,1]) static_face(45);
  translate([0,0,6.95]) rotate([-90,0,0]) scale([.66,1,8.2/7]) static_face(33);
}

left_top_chunk();

module wall_top(faces) {
  translate([23,0,0]) cube([50-2-8.2-6.6-8.2,8.2,7]);

  // Outside
  translate([23,0.05,0]) static_face(faces[0]);
  translate([33,0.05,0]) static_face(faces[1]);
  translate([43+5,0.05,0]) rotate([0,-90,0]) scale([7/10,1,5/7]) static_face(faces[2]);

  // Back
  translate([47.95,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(faces[3]);

  // Inside
  translate([33,8.15,0]) rotate([0,0,180]) static_face(faces[4]);
  translate([43,8.15,0]) rotate([0,0,180]) static_face(faces[5]);
  translate([43,8.15,0]) rotate([0,-90,180]) scale([7/10,1,5/7]) static_face(faces[6]);

  // Top
  translate([23,0,6.95]) rotate([-90,0,0]) scale([1,1,8.2/7]) static_face(faces[7]);
  translate([33,0,6.95]) rotate([-90,0,0]) scale([1,1,8.2/7]) static_face(faces[8]);
  translate([48,0,6.95]) rotate([-90,0,0]) scale([1,1,8.2/7]) rotate([0,-90,0]) scale([7/10,1,5/7]) static_face(faces[9]);

}

//wall_top([17,58,30,23,6,18,50,61,53,38]);
//wall_top([20,35,11,32,38,49,23,41,27,0]);

module right_wall_line(faces) {
  translate([8.2,0,0]) cube([50-2-8.2,8.2,7]);

  // Outside
  translate([8.2,0.05,0]) scale([0.98,1,1]) static_face(faces[0]);
  translate([18,0.05,0]) static_face(faces[1]);
  translate([28,0.05,0]) static_face(faces[2]);
  translate([38,0.05,0]) static_face(faces[3]);


  // Back
  translate([47.95,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(faces[4]);

  // Inside
  translate([28-5,8.15,0]) rotate([0,-90,180]) scale([7/10,1,5/7]) static_face(faces[5]);
  translate([38,8.15,0]) rotate([0,0,180]) static_face(faces[6]);
  translate([48,8.15,0]) rotate([0,0,180]) static_face(faces[7]);
}

module right_wall_line_stagger(faces) {
  translate([8.2,0,0]) cube([50-2-8.2,8.2,7]);

  // Outside
  translate([13.2,0.05,0]) rotate([0,-90,0]) scale([7/10,1,5/7]) static_face(faces[0]);
  translate([13,0.05,0]) static_face(faces[1]);
  translate([23,0.05,0]) static_face(faces[2]);
  translate([33,0.05,0]) static_face(faces[3]);
  translate([43+5,0.05,0]) rotate([0,-90,0]) scale([7/10,1,5/7]) static_face(faces[4]);

  // Back
  translate([47.95,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(faces[5]);

  // Inside
  translate([33,8.15,0]) rotate([0,0,180]) static_face(faces[6]);
  translate([43,8.15,0]) rotate([0,0,180]) static_face(faces[7]);
  translate([43,8.15,0]) rotate([0,-90,180]) scale([7/10,1,5/7]) static_face(faces[8]);
}

module left_wall_line(faces) {
  translate([8.2,0,0]) cube([50-2-8.2,8.2,7]);

  // Outside
  translate([18,8.15,0]) rotate([0,0,180]) scale([.98,1,1]) static_face(faces[0]);
  translate([28,8.15,0]) rotate([0,0,180]) static_face(faces[1]);
  translate([38,8.15,0]) rotate([0,0,180]) static_face(faces[2]);
  translate([48,8.15,0]) rotate([0,0,180]) static_face(faces[3]);

  // Back
  translate([47.95,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(faces[4]);

  // Inside
  translate([28,0.05,0]) rotate([0,-90,0]) scale([7/10,1,5/7]) static_face(faces[5]);
  translate([28,0.05,0]) static_face(faces[6]);
  translate([38,0.05,0]) static_face(faces[7]);
}

module left_wall_line_stagger(faces) {
  translate([8.2,0,0]) cube([50-2-8.2,8.2,7]);

  // Outside
  translate([8.2,8.15,0]) rotate([0,-90,180]) scale([7/10,1,5/7]) static_face(faces[0]);
  translate([23,8.15,0]) rotate([0,0,180]) static_face(faces[1]);
  translate([33,8.15,0]) rotate([0,0,180]) static_face(faces[2]);
  translate([43,8.15,0]) rotate([0,0,180]) static_face(faces[3]);
  translate([43,8.15,0]) rotate([0,-90,180]) scale([7/10,1,5/7]) static_face(faces[4]);

  // Back
  translate([47.95,0,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(faces[5]);

  // Inside
  translate([23,0.05,0]) static_face(faces[6]);
  translate([33,0.05,0]) static_face(faces[7]);
  translate([43+5,0.05,0]) rotate([0,-90,0]) scale([7/10,1,5/7]) static_face(faces[8]);
}

render=false;
staggered=true;
right=false;
faces=[1,2,3,4,5,6,7,8,9];

if(render) {
if (right) {
  if (staggered) {
    right_wall_line_stagger(faces);
  } else {
    right_wall_line(faces);
  }
} else {
  if (staggered) {
    left_wall_line_stagger(faces);
  } else {
    left_wall_line(faces);
  }
}
}

