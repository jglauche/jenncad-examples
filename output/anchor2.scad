module TestModule(){
  cube([60, 20, 5.0]);}
module Anchor2(){
  union(){
    color("darkblue")cube([42, 23.3, 5.0]);
    translate([42, 11.65, 0])color("lightblue")TestModule();
    translate([60, 0, 0])translate([42, 11.65, 0])color("OrangeRed")TestModule();
    translate([60, 20, 0])translate([60, 0, 0])translate([42, 11.65, 0])color("red")TestModule();
  }
}
$fn=64;
Anchor2();
