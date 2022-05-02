module CubeExample(){
  union(){
    translate([-21, -11.65, 0])color("yellow")cube([42, 23.3, 5]);
    translate([0, 0, 5])color("orange")cube([42, 23.3, 5]);
    translate([-21, 0, 10])color("red")cube([42, 23.3, 5]);
    translate([0, -11.65, 15])color("pink")cube([42, 23.3, 5]);
    translate([0, 0, 17.5])color("purple")cube([42, 23.3, 5]);
  }
}
$fn=64;
CubeExample();
