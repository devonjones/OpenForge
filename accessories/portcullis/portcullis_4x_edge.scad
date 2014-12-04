module portcullis() {
  translate([0,2,0]) vertical_side();
  translate([0,98-4,0]) vertical_side();

  translate([0,13-2.5,0]) vertical();
  translate([0,25.5-2.5,0]) vertical();
  translate([0,25+13-2.5,0]) vertical();
  translate([0,50.5-2.5,0]) vertical();
  translate([0,50+13-2.5,0]) vertical();
  translate([0,75.5-2.5,0]) vertical();
  translate([0,75+13-2.5,0]) vertical();

  translate([6,2,0]) bottom_horizontal_front();
  translate([6+12.5,2,0]) horizontal_front();
  translate([6+12.5*2,2,0]) horizontal_front();
  translate([6+12.5*3,2,0]) horizontal_front();
  translate([6+12.5*4,2,0]) horizontal_front();
  translate([6+12.5*5,2,0]) horizontal_front();
  translate([6+12.5*6,2,0]) horizontal_front();
  translate([104.5-15,2-6,0]) cube([4,96+12,1.7]);

  translate([104.5+4-15,14.5,0]) hook();
  translate([104.5+4-15,85.5,0]) hook();
}

module bottom_horizontal_front() {
  cube([4,96,1.5]);
  translate([1,2,0]) cube([2,92,1.7]);
  translate([2,2,1.3]) cylinder(1,.5,.5, $fn=20);
  translate([2,2,.9]) cylinder(1,2,2, $fn=20);
  translate([2,10+3*12.7,.9]) cylinder(1,2,2, $fn=20);
  translate([2,94,.9]) cylinder(1,2,2, $fn=20);
  translate([2,94,1.3]) cylinder(1,.5,.5, $fn=20);
  for (i = [0 : 6]) {
    if(i != 3) {
      translate([2,10.5+i*12.5,.9]) cylinder(1,1.5,1.5, $fn=20);
    }
    translate([2,10.5+i*12.5,1.3]) cylinder(1,.5,.5, $fn=20);
    translate([2,10.5-4.2+i*12.5,1.1]) cylinder(1,.5,.5, $fn=20);
    translate([2,10.5+4.2+i*12.5,1.1]) cylinder(1,.5,.5, $fn=20);
  }
}

module horizontal_front() {
  cube([4,96,1.5]);
  translate([1,2,0]) cube([2,92,1.7]);
  for (i = [0 : 6]) {
    translate([2,10.5+i*12.5,1.1]) cylinder(1,.5,.5, $fn=20);
  }
}

module vertical_side() {
  cube([104.5-15,4,1.7]);
  translate([7,1,0]) cube([104.5-7-15,2,1.9]);
  for (i = [0 : 5]) {
    translate([20.5+i*12.5,2,1.3]) cylinder(1,.5,.5, $fn=20);
  }
}

module vertical() {
  translate([6,0,0]) cube([98.5-15,4,1]);
  difference() {
    cube([6,4,1.5]);
    translate([6,4,-1]) rotate([0,0,atan(2/6)+90]) cube([10,10,5]);
    translate([6,0,-1]) rotate([0,0,90-atan(2/6)+90]) cube([10,10,5]);
    translate([6,0,1.5]) rotate([-atan(1.5/6),0,90]) cube([10,10,5]);
  }
}

module hook() {
  scale([1,2,1]) difference() {
    cylinder(1, 12.5/2, 12.5/2);
    translate([0,0,-1]) cylinder(4, 8/2, 8/2);
    translate([-10,-10,-1]) cube([10,20,4]);
  }
}

portcullis();
//translate([0,100,0]) rotate([180,0,0]) portcullis();