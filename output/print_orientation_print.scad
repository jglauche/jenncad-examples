module PrintOrientation(){
  difference(){
    union(){
      translate([0, 0, 8])cylinder(d=52,h=70,$fn=208);
      cylinder(d=10,h=86,$fn=64);
    }

    translate([0, 0, -0.004])linear_extrude(height=86.008)translate([-26, 0, 0])square([52, 52]);
  }
}
$fn=64;
rotate([-90, 0, 0])color("gold")PrintOrientation();
