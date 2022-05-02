module RcubeMoveOrigin(){
  union(){
    difference(){
      color("HotPink")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=2,$fn=64);
              translate([37, 0, 0])cylinder(d=5,h=2,$fn=64);
              translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
              translate([37, 18, 0])cylinder(d=5,h=2,$fn=64);
            }

      translate([26, 18, -0.1])color("DarkOrchid")cylinder(d=3,h=2.2,$fn=64);
    }

    translate([21, 23, 0])color("blue")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=2,$fn=64);
              translate([16, 0, 0])cylinder(d=5,h=2,$fn=64);
              translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
              translate([16, 18, 0])cylinder(d=5,h=2,$fn=64);
            }

    translate([42, 11.5, 0])color("purple")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=2,$fn=64);
              translate([37, 0, 0])cylinder(d=5,h=2,$fn=64);
              translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
              translate([37, 18, 0])cylinder(d=5,h=2,$fn=64);
            }

    translate([100, 0, 0])color("MediumVioletRed")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=2,$fn=64);
              translate([37, 0, 0])cylinder(d=5,h=2,$fn=64);
              translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
              translate([37, 18, 0])cylinder(d=5,h=2,$fn=64);
            }

    translate([-21, -11.5, -2])union(){
        translate([-21, -11.5, 0])color("DarkOrchid")cube([42, 23, 2.0]);
        translate([-21, -11.5, 0])color("DarkRed")cylinder(d=10,h=2,$fn=64);
        translate([21, 11.5, 0])color("Red")cylinder(d=10,h=2,$fn=64);
        translate([21, -11.5, 0])color("hotpink")cylinder(d=10,h=2,$fn=64);
        translate([-21, 11.5, 0])color("mediumvioletred")cylinder(d=10,h=2,$fn=64);
      }

  }
}
$fn=64;
RcubeMoveOrigin();
