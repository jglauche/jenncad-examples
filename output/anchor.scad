module Anchor(){
  translate([-5, -5, 0])difference(){
      translate([-21, -11.65, 0])cube([42, 23.3, 5.0]);
      translate([0, 0, -0.1])translate([5, 5, 0])cylinder(d=3,h=5.2,$fn=64);
      translate([0, 0, -0.1])translate([-5, -5, 0])cylinder(d=3,h=5.2,$fn=64);
    }
}
$fn=64;
color("LightCoral")Anchor();
