module TestModule(){
  difference(){
    cube([60, 20, 5]);
    translate([23, 10, -0.1])cylinder(d=10,h=5.2,$fn=64);
    translate([42, 10, -0.1])cylinder(d=10,h=5.2,$fn=64);
    translate([5, 15, -0.1])cylinder(d=3,h=5.2,$fn=64);
    translate([55, 15, -0.1])cylinder(d=3,h=5.2,$fn=64);
    translate([5, 5, -0.1])cylinder(d=3,h=5.2,$fn=64);
    translate([55, 5, -0.1])cylinder(d=3,h=5.2,$fn=64);
  }
}
module Anchor2(){
  union(){
    color("darkblue")cube([42, 23.3, 5]);
    translate([42, 11.65, 0])color("lightblue")TestModule();
    translate([102, 11.65, 0])color("OrangeRed")TestModule();
    translate([162, 31.65, 0])color("red")TestModule();
  }
}
$fn=64;
Anchor2();
