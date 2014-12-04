include <forge_lib.scad>

//translate([-18.9,-1,9.2]) rotate([0,90,00]) import("gatehouse_tile.stl");
difference() {
  cube([80.1,118.4,8.2]);
  intersection() {
    translate([-0.1,16.4,-0.1]) cube([40.15+10+50,85.6,10]);
    translate([58.95-sqrt((85.6*85.6)/2)-11.2,16.4+sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
    translate([58.95-sqrt((85.6*85.6)/2)-11.2,16.4+85.6-sqrt((85.6*85.6)/2),-0.01]) cylinder(10,85.6,85.6,$fn=200);
  }
}

module sides(right, left, front, top) {
  translate([0,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[0]);
  translate([7,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[1]);
  translate([14,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.7]) static_face(right[2]);
  translate([18.9,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.5]) static_face(right[3]);
  translate([22.4,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[4]);
  translate([30.1,0.05,8.2]) rotate([0,90,0]) scale([.82,1,5.2/7]) static_face(right[5]);
  translate([35.3,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[6]);
  translate([42.3,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[7]);
  translate([50,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[8]);
  translate([57,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[9]);
  translate([64,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.7]) static_face(right[10]);
  translate([68.9,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.5]) static_face(right[11]);
  translate([72.4,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[12]);

  translate([0,85.6+16.4,0]) union() {
    translate([0,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[13]);
    translate([7,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[14]);
    translate([14,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.7]) static_face(right[15]);
    translate([18.9,0.05,8.2]) rotate([0,90,0]) scale([.82,1,.5]) static_face(right[16]);
    translate([22.4,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[17]);
    translate([30.1,0.05,8.2]) rotate([0,90,0]) scale([.82,1,5.2/7]) static_face(right[18]);
    translate([35.3,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1]) static_face(right[19]);
    translate([42.3,0.05,8.2]) rotate([0,90,0]) scale([.82,1,1.1]) static_face(right[20]);
  }

  translate([7,118.4,0]) union() {
    translate([0,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[0]);
    translate([7,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[1]);
    translate([11.9,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.7]) static_face(left[2]);
    translate([15.4,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.5]) static_face(left[3]);
    translate([23.1,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[4]);
    translate([28.3,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,5.2/7]) static_face(left[5]);
    translate([35.3,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[6]);
    translate([43,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[7]);
    translate([50,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[8]);
    translate([57,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[9]);
    translate([61.9,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.7]) static_face(left[10]);
    translate([65.4,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.5]) static_face(left[11]);
    translate([73.1,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[12]);
  }

  translate([7,16.4,0]) union() {
    translate([0,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[13]);
    translate([7,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[14]);
    translate([11.9,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.7]) static_face(left[15]);
    translate([15.4,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,.5]) static_face(left[16]);
    translate([23.1,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[17]);
    translate([28.3,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,5.2/7]) static_face(left[18]);
    translate([35.3,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1]) static_face(left[19]);
    translate([43,-0.05,8.2]) rotate([180,90,0]) scale([.82,1,1.1]) static_face(left[20]);
  }

  translate([0,0,8.15]) union() {
    translate([7,0,0]) rotate([-90,0,90]) static_face(front[0]);
    translate([7,10,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[1]);
    translate([7,102,0]) rotate([-90,0,90]) static_face(front[2]);
    translate([7,112,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[3]);
    translate([14,6.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[4]);
    translate([14,0,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[5]);
    translate([14,102,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[6]);
    translate([14,108.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[7]);
    translate([18.9,0,0]) rotate([-90,0,90]) scale([1.64,1,.7]) static_face(front[8]);
    translate([18.9,102,0]) rotate([-90,0,90]) scale([1.64,1,.7]) static_face(front[9]);
    translate([22.4,0,0]) rotate([-90,0,90]) scale([1,1,.5])  static_face(front[10]);
    translate([22.4,10,0]) rotate([-90,0,90]) scale([.62,1,.5]) static_face(front[11]);
    translate([22.4,102,0]) rotate([-90,0,90]) scale([1,1,.5])  static_face(front[12]);
    translate([22.4,112,0]) rotate([-90,0,90]) scale([.62,1,.5]) static_face(front[13]);
    translate([30.1,6.2,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[14]);
    translate([30.1,0,0]) rotate([-90,0,90]) scale([.62,1,1.1]) static_face(front[15]);
    translate([30.1,102,0]) rotate([-90,0,90]) scale([.62,1,1.1]) static_face(front[16]);
    translate([30.1,108.2,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[17]);
    translate([35.3,0,0]) rotate([-90,0,90]) scale([1.64,1,5.2/7])  static_face(front[18]);
    translate([35.3,102,0]) rotate([-90,0,90]) scale([1.64,1,5.2/7])  static_face(front[19]);
    translate([42.3,0,0]) rotate([-90,0,90]) scale([1,1,1])  static_face(front[20]);
    translate([42.3,10,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[21]);
    translate([42.3,102,0]) rotate([-90,0,90]) scale([1,1,1])  static_face(front[22]);
    translate([42.3,112,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[23]);
    translate([50,6.2,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[24]);
    translate([50,0,0]) rotate([-90,0,90]) scale([.62,1,1.1]) static_face(front[25]);
    translate([50,102,0]) rotate([-90,0,90]) scale([.62,1,1.1]) static_face(front[26]);
    translate([50,108.2,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[27]);
    translate([57,0,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[28]);
    translate([57,10,0]) rotate([-90,0,90]) scale([.85,1,1]) static_face(front[29]);
    translate([57,100,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[30]);
    translate([57,110,0]) rotate([-90,0,90]) scale([.8,1,1]) static_face(front[31]);
    translate([64,0,0]) rotate([-90,0,90]) scale([.62,1,1]) static_face(front[32]);
    translate([64,6.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[33]);
    translate([64,16.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[34]);
    translate([64,96.2,0]) rotate([-90,0,90]) scale([1,1,1]) static_face(front[35]);
    translate([64,106.2,0]) rotate([-90,0,90]) scale([1.2,1,1]) static_face(front[36]);

    translate([68.9,0,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[37]);
    translate([68.9,10,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[38]);
    translate([68.9,20,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[39]);
    translate([68.9,30,0]) rotate([-90,0,90]) scale([.5,1,.7]) static_face(front[40]);
    translate([68.9,83,0]) rotate([-90,0,90]) scale([.7,1,.7]) static_face(front[41]);
    translate([68.9,90,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[42]);
    translate([68.9,100,0]) rotate([-90,0,90]) scale([1,1,.7]) static_face(front[43]);
    translate([68.9,110,0]) rotate([-90,0,90]) scale([.8,1,.7]) static_face(front[44]);

    translate([72.4,0,0]) rotate([-90,0,90]) scale([.62,1,.5]) static_face(front[45]);
    translate([72.4,6.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[46]);
    translate([72.4,16.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[47]);
    translate([72.4,26.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[48]);
    translate([72.4,36.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[49]);
    translate([72.4,76.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[51]);
    translate([72.4,86.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[52]);
    translate([72.4,96.2,0]) rotate([-90,0,90]) scale([1,1,.5]) static_face(front[53]);
    translate([72.4,106.2,0]) rotate([-90,0,90]) scale([1.2,1,.5]) static_face(front[54]);

    translate([80.1,0,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[55]);
    translate([80.1,10,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[56]);
    translate([80.1,20,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[57]);
    translate([80.1,30,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[58]);
    translate([80.1,40,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[59]);
    translate([80.1,50,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[60]);
    translate([80.1,60,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[61]);
    translate([80.1,70,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[62]);
    translate([80.1,80,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[63]);
    translate([80.1,90,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[64]);
    translate([80.1,100,0]) rotate([-90,0,90]) scale([1,1,1.1]) static_face(front[65]);
    translate([80.1,110,0]) rotate([-90,0,90]) scale([.8,1,1.1]) static_face(front[66]);

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

/*
  translate([80.05,0,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[0]);
  translate([80.05,10,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[1]);
  translate([80.05,20,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[2]);
  translate([80.05,30,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[3]);
  translate([80.05,40,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[4]);
  translate([80.05,50,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[5]);
  translate([80.05,60,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[6]);
  translate([80.05,70,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[7]);
  translate([80.05,80,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[8]);
#  translate([80.05,90,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[9]);
  translate([80.05,100,0]) rotate([0,0,90]) scale([1,1.1,8.2/7]) static_face(top[10]);
  translate([80.05,110,0]) rotate([0,0,90]) scale([.8,1.1,8.2/7]) static_face(top[11]);
*/
}

sides(
[27, 8, 3,56,44,59,39,63,18,31, 6,18, 2,36,32,22, 9,62,13, 1,29],
[ 1,26,13,39,31,22, 4, 1,58,24,12,23,50,46,49, 8, 7,16,44,21,39],
[39,30,41,18,60,19,45,44,54,50,
 23,17,49,53,63, 6,62,40,58,30,//10,38,
 32,58,33,55,13, 3,59, 0,36,57,
 31,24,51,35,56,43, 1, 7, 9,28,
 16,52, 4,25, 2,29,11,34,61,12,
 37,18,20,12,37,14,42,26,22,53,
 60,21, 0, 5,46,27, 8,
  3,56,44,59,39,63],
[18,31, 6,18, 2,48,12,55,42,52,20,11]);

/*
  , , ]' \
  -D 'back=[, ]' \
  -D 'back=[, , 41, 19, 4]' \
  -D 'back=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
  -D 'back=[17, 58, 30, 23, 6, 18, 50, 61, 53, 38, 2, 10, 63]' \
  -D 'back=[59, 24,  0, 27, 14, 5, 54, 45, 56, 1, 37, 43, 40]' \
  -D 'back=[57, 60, 51, 35, 34, 33, 3, 28, 25, 31, 12, 29, 24]' \
  -D 'back=[1, 26, 13, 39, 31, 22, 4, 1, 58, 24, 12, 23, 50]' \

  -D 'sides=[59, 34]' \
  -D 'sides=[30, 11]' \
  -D 'sides=[42, 45]' \
  -D 'sides=[42, 45]' \
  -D 'sides=[9, 36]' \
  -D 'sides=[29, 23]' \
  -D 'sides=[22, 49]' \

  -D 'top=[19, 37, 16, 58, 28, 63, 1, 13, 46, 18, 26]' \


//translate([19.9, 21, 4]) cylinder(8,1.9,1.9,$fn=20);
//translate([19.9, 99.4, 4]) cylinder(8,1.9,1.9,$fn=20);
//translate([19.9, 21, 4]) cylinder(8,1.9,1.9,$fn=20);
//translate([19.9, 99.4, 4]) cylinder(8,1.9,1.9,$fn=20);

