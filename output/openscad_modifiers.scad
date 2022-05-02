module OpenscadModifiers(){
  union(){
    translate([-5, -10, 0])color("purple")cube([10, 20, 5]);
    translate([5, -10, 0])color("purple")#cube([10, 20, 5]);
    translate([15, -10, 0])%cube([10, 20, 5]);
    translate([25, -10, 0])color("purple")*cube([10, 20, 5]);
    translate([35, -10, 0])color("purple")!cube([10, 20, 5]);
  }
}
$fn=64;
OpenscadModifiers();
