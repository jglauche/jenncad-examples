module CubeMoveOrigin(){
  union(){
    difference(){
      color("HotPink")cube([42, 23, 2]);
      translate([26, 18, -0.1])color("gold")cylinder(d=3,h=2.2,$fn=64);
    }

    translate([21, 23, 0])color("blue")cube([21, 23, 2]);
    translate([42, 11.5, 0])color("purple")cube([42, 23, 2]);
    translate([100, 0, 0])color("MediumVioletRed")cube([42, 23, 2]);
    translate([-21, -11.5, -2])union(){
        translate([-21, -11.5, 0])color("DarkOrchid")cube([42, 23, 2]);
        translate([-21, -11.5, 0])color("DarkRed")cylinder(d=10,h=2,$fn=64);
        translate([21, 11.5, 0])color("Red")cylinder(d=10,h=2,$fn=64);
        translate([21, -11.5, 0])color("hotpink")cylinder(d=10,h=2,$fn=64);
        translate([-21, 11.5, 0])color("mediumvioletred")cylinder(d=10,h=2,$fn=64);
      }

  }
}
$fn=64;
CubeMoveOrigin();
