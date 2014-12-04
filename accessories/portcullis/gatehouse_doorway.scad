include <forge_lib.scad>

//translate([-18.9,118.4+1,-1-6.6-8.2]) rotate([0,270,180]) import("gatehouse_tile.stl");

module sides(right, left, front, top) {
  translate([72.4,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[0]);

  translate([0,85.6+16.4,0]) union() {
    translate([0,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[1]);
    translate([7,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[2]);
    translate([14,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.7]) static_face(right[3]);
    translate([18.9,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.5]) static_face(right[4]);
    translate([22.4,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[5]);
    translate([30.1,0.05,8.2]) rotate([0,90,0]) scale([.82,1,5.2/7]) static_face(right[6]);
    translate([35.3,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[7]);
    translate([42.3,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[8]);
  }

  translate([7,118.4,0]) union() {
    translate([73.1,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[0]);
  }

  translate([7,16.4,0]) union() {
    translate([0,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[1]);
    translate([7,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[2]);
    translate([11.9,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.7]) static_face(left[3]);
    translate([15.4,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.5]) static_face(left[4]);
    translate([23.1,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[5]);
    translate([28.3,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,5.2/7]) static_face(left[6]);
    translate([35.3,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[7]);
    translate([43,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[8]);
  }

  translate([0,0,8.15]) union() {
    translate([7,8.2,0]) rotate([-90,0,90]) scale([.82,1,1]) static_face(front[0]);
    translate([7,102,0]) rotate([-90,0,90]) scale([.82,1,1]) static_face(front[1]);
    translate([14,8.2,0]) rotate([-90,0,90]) scale([.82,1,1]) static_face(front[2]);
    translate([14,102,0]) rotate([-90,0,90]) scale([.82,1,1]) static_face(front[3]);
    translate([18.9,8.2,0]) rotate([-90,0,90]) scale([.82,1,.7]) static_face(front[4]);
    translate([18.9,102,0]) rotate([-90,0,90]) scale([.82,1,.7]) static_face(front[5]);
    translate([22.4,8.2,0]) rotate([-90,0,90]) scale([.82,1,.5]) static_face(front[6]);
    translate([22.4,102,0]) rotate([-90,0,90]) scale([.82,1,.5])  static_face(front[7]);
    translate([30.1,8.2,0]) rotate([-90,0,90]) scale([.82,1,1.1]) static_face(front[8]);
    translate([30.1,102,0]) rotate([-90,0,90]) scale([.82,1,1.1]) static_face(front[9]);
    translate([35.3,8.2,0]) rotate([-90,0,90]) scale([.82,1,5.2/7])  static_face(front[10]);
    translate([35.3,102,0]) rotate([-90,0,90]) scale([.82,1,5.2/7])  static_face(front[11]);
    translate([42.3,8.2,0]) rotate([-90,0,90]) scale([.82,1,1])  static_face(front[12]);
    translate([42.3,102,0]) rotate([-90,0,90]) scale([.82,1,1])  static_face(front[13]);
    translate([50,8.2,0]) rotate([-90,0,90]) scale([.82,1,1.1]) static_face(front[14]);
    translate([50,102,0]) rotate([-90,0,90]) scale([.82,1,1.1]) static_face(front[15]);
    translate([57,8.2,0]) rotate([-90,0,90]) scale([.82,1,1]) static_face(front[16]);
    translate([57,98.2,0]) rotate([-90,0,90]) scale([1.2,1,1]) static_face(front[17]);
    translate([64,8.2,0]) rotate([-90,0,90]) scale([.5,1,1]) static_face(front[18]);
    translate([64,13.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[19]);
    translate([64,93.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[20]);
    translate([64,103.2,0]) rotate([-90,0,90]) scale([.7,1,1]) static_face(front[21]);
    translate([68.9,8.2,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[22]);
    translate([68.9,18.2,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[23]);
    translate([68.9,28.2,0]) rotate([-90,0,90]) scale([.8,1,.7]) static_face(front[24]);
    translate([68.9,88.2,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[25]);
    translate([68.9,98.2,0]) rotate([-90,0,90]) scale([1.2,1,.7]) static_face(front[26]);
    translate([72.4,8.2,0]) rotate([-90,0,90]) scale([.5,1,.5]) static_face(front[27]);
    translate([72.4,13.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[28]);
    translate([72.4,23.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[29]);
    translate([72.4,33.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[30]);
    translate([72.4,73.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[34]);
    translate([72.4,83.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[35]);
    translate([72.4,93.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[36]);
    translate([72.4,103.2,0]) rotate([-90,0,90]) scale([.7,1,.5]) static_face(front[37]);

    translate([80.1,8.2,0]) rotate([-90,0,90]) scale([1.18,1,1.1]) static_face(front[39]);
    translate([80.1,20,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[40]);
    translate([80.1,30,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[41]);
    translate([80.1,40,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[42]);
    translate([80.1,50,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[43]);
    translate([80.1,60,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[44]);
    translate([80.1,70,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[45]);
    translate([80.1,80,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[46]);
    translate([80.1,90,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[47]);
    translate([80.1,100,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[48]);

    translate([53,10.5,0]) rotate([-90,0,49]) scale([1,2.5,1.1]) static_face(44);
    translate([60,18.5,0]) rotate([-90,0,54]) scale([1,2.5,1.1]) static_face(44);
    translate([66.4,27.2,0]) rotate([-90,0,62]) scale([1,2.5,1.1]) static_face(44);
    translate([71.4,36.4,0]) rotate([-90,0,68]) scale([1,2.5,1.1]) static_face(44);
    translate([75.4,46.1,0]) rotate([-90,0,74]) scale([1,2.5,1.1]) static_face(44);

    translate([60,100,0]) rotate([-90,0,131]) scale([1,2.5,1.1]) static_face(44);
    translate([66.1,91.6,0]) rotate([-90,0,125]) scale([1,2.5,1.1]) static_face(44);
    translate([71.1,82.4,0]) rotate([-90,0,118]) scale([1,2.5,1.1]) static_face(44);
    translate([75.2,72.8,0]) rotate([-90,0,112]) scale([1,2.5,1.1]) static_face(44);
    translate([78.1,62.9,0]) rotate([-90,0,106]) scale([1,2.5,1.1]) static_face(44);

    translate([78.5,118.4/2-2.25,0]) rotate([-90,0,90]) scale([.45,2.5,1.1]) static_face(44);

    translate([53-5.28,10.5+4.6,0]) rotate([180,0,49]) scale([1,2.5,8.2/7]) static_face(1);
    translate([60-5.66,18.5+4.12,0]) rotate([180,0,54]) scale([1,2.5,8.2/7]) static_face(6);
    translate([66.4-6.18,27.2+3.29,0]) rotate([180,0,62]) scale([1,2.5,8.2/7]) static_face(1);
    translate([71.4-6.5,36.4+2.62,0]) rotate([180,0,68]) scale([1,2.5,8.2/7]) static_face(6);
    translate([75.4-6.73,46.1+1.93,0]) rotate([180,0,74]) scale([1,2.5,8.2/7]) static_face(1);

    translate([60-5.28,100-4.6,0]) rotate([180,0,131]) scale([1,2.5,8.2/7]) static_face(1);
    translate([66.1-5.66,91.6-4.12,0]) rotate([180,0,125]) scale([1,2.5,8.2/7]) static_face(6);
    translate([71.1-6.18,82.4-3.29,0]) rotate([180,0,118]) scale([1,2.5,8.2/7]) static_face(1);
    translate([75.2-6.5,72.8-2.62,0]) rotate([180,0,112]) scale([1,2.5,8.2/7]) static_face(6);
    translate([78.1-6.73,62.9-1.93,0]) rotate([180,0,106]) scale([1,2.5,8.2/7]) static_face(1);
  }

  translate([80.05,0,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[0]);
  translate([80.05,10,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[1]);
  translate([80.05,20,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[2]);
  translate([80.05,30,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[3]);
  translate([80.05,40,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[4]);
  translate([80.05,50,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[5]);
  translate([80.05,60,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[6]);
  translate([80.05,70,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[7]);
  translate([80.05,80,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[8]);
  translate([80.05,90,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[9]);
  translate([80.05,100,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[10]);
  translate([80.05,110,0]) rotate([0,0,90]) scale([.8,1.1,8.2/7]) static_face(top[11]);
}

difference() {
  union() {
    sides(
      [39,30,41,18,60,19,45,44,54],
      [23,17,49,53,63, 6,62,40,58],
      [41,19, 4,17,58,30,23, 6,18,50,
       61,53,38, 2,10,63,59,24, 0,27,
       14, 5,54,45,56, 1,37,43,40,57,
       60,51,35,34,33, 3,28,25,31,12,
       29,24, 1,26,13,39,31,22, 4, 1],
      [19,37,16,58,28,63, 1,13,46,18,26,22]);

    difference() {
      union() {
        translate([0,8.2,0]) cube([80.1,118.4-8.2*2,8.2]);
        translate([80.1-7.7,0,0]) cube([7.7,8.2,8.2]);
        translate([80.1-7.7,118.4-8.2,0]) cube([7.7,8.2,8.2]);
      }
      intersection() {
        translate([-0.1,16.4,-0.1]) cube([40.15+10+50,85.6,10]);
        translate([58.95-sqrt((85.6*85.6)/2)-11.2,16.4+sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
        translate([58.95-sqrt((85.6*85.6)/2)-11.2,16.4+85.6-sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
      }
    }
  }
  translate([-8.8, 20, 4]) rotate([0,90,0]) cylinder(66,2,2,$fn=20);
  translate([-8.8, 98.4, 4]) rotate([0,90,0])  cylinder(66,2,2,$fn=20);
}

/*
  , , ]' \
  -D 'back=[, ]' \
  -D 'back=[, , ]' \
  -D 'back=[]' \
  -D 'back=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
  -D 'back=[]' \
  -D 'back=[]' \
  -D 'back=[]' \

  -D 'sides=[59, 34]' \
  -D 'sides=[30, 11]' \
  -D 'sides=[42, 45]' \
  -D 'sides=[42, 45]' \
  -D 'sides=[9, 36]' \
  -D 'sides=[29, 23]' \
  -D 'sides=[49]' \

  -D 'top=[]' \
*/

//translate([19.9, 21, 4]) cylinder(8,1.9,1.9,$fn=20);
//translate([19.9, 99.4, 4]) cylinder(8,1.9,1.9,$fn=20);

