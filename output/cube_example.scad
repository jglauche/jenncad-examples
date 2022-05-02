module CubeExample(){
  union(){
    translate([-21, -11.65, 0])color("yellow")cube([42, 23.3, 5.0]);
    translate([0, 0, 5])color("orange")cube([42, 23.3, 5.0]);
    translate([-21, 0, 0])translate([0, 0, 10])color("red")cube([42, 23.3, 5.0]);
    translate([0, -11.65, 0])translate([0, 0, 15])color("pink")cube([42, 23.3, 5.0]);
    translate([0, 0, -2.5])translate([0, 0, 20])color("purple")cube([42, 23.3, 5.0]);
  }
}
$fn=64;
CubeExample();
