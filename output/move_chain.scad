module MoveChain(){
  union(){
    translate([20, 0, 0])color("red")cube([10, 20, 4.0]);
    translate([0, 10, 0])translate([0, 10, 0])color("orangered")cube([10, 20, 4.0]);
    translate([20, 30, 0])color("orange")cube([10, 20, 4.0]);
    translate([0, -10, 0])translate([-20, -20, 0])color("yellow")cube([10, 20, 4.0]);
    translate([0, -10, 0])translate([0, -20, 0])color("blue")cube([10, 20, 4.0]);
    translate([0, 20, 0])translate([0, -50, 0])color("navy")cube([10, 20, 4.0]);
    translate([0, -20, 0])translate([-50, 0, 0])color("purple")cube([10, 20, 4.0]);
  }
}
$fn=64;
MoveChain();
