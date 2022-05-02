module Rcube(){
  union(){
    translate([-20, -10, 0])color("yellow")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=5,$fn=64);
              translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
              translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
              translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
            }

    translate([0, 0, 5])color("orange")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=5,$fn=64);
              translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
              translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
              translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
            }

    translate([-20, 0, 10])color("red")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=5,$fn=64);
              translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
              translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
              translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
            }

    translate([0, -10, 15])color("pink")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=5,$fn=64);
              translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
              translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
              translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
            }

    translate([0, 0, 17.5])color("purple")union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=5,$fn=64);
              translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
              translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
              translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
            }

    translate([0, 0, 22.5])color("blue")union()translate([5, 5, 0])hull(){
              cylinder(d=10,h=5,$fn=64);
              translate([30, 0, 0])cylinder(d=10,h=5,$fn=64);
              translate([0, 10, 0])cylinder(d=10,h=5,$fn=64);
              translate([30, 10, 0])cylinder(d=10,h=5,$fn=64);
            }

  }
}
$fn=64;
Rcube();
