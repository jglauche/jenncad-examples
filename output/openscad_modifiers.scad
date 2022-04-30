module OpenscadModifiers(){
  union(){
    translate([-5, -10, 0])color("purple")cube([10, 20, 5.0]);
    translate([-5, -10, 0])translate([10, 0, 0])color("purple")#cube([10, 20, 5.0]);
    translate([-5, -10, 0])translate([20, 0, 0])%cube([10, 20, 5.0]);
    translate([-5, -10, 0])translate([30, 0, 0])color("purple")*cube([10, 20, 5.0]);
    translate([-5, -10, 0])translate([40, 0, 0])color("purple")!cube([10, 20, 5.0]);
  }
}
$fn=64;
OpenscadModifiers();
