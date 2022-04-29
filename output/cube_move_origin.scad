module CubeMoveOrigin(){
  union(){
    color("HotPink")difference(){
        translate([0, 0, 0])cube([42, 23, 2.0]);
        translate([0, 0, -0.1])translate([5, -5, 0])translate([0, 23, 0])cylinder(d=3,h=2.2,$fn=64);
      }

    translate([0, 0, 0])translate([0, 23, 0])color("blue")cube([21.0, 23, 2.0]);
    translate([0, 0, 0])translate([42, 0, 0])color("purple")cube([42, 23, 2.0]);
    translate([0, 0, 0])translate([30, 30, 0])color("MediumVioletRed")cube([42, 23, 2.0]);
  }
}
$fn=64;
CubeMoveOrigin();
