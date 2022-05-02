module TestModule(){
  cube([60, 20, 5.0]);}
module Anchor2(){
  union(){
    color("darkblue")cube([42, 23.3, 5.0]);
    translate([42, 11.65, 0])color("lightblue")TestModule();
    translate([102, 11.65, 0])color("OrangeRed")TestModule();
    translate([162, 31.65, 0])color("red")TestModule();
  }
}
$fn=64;
Anchor2();
