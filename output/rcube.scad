module Rcube(){
  union(){
    translate([-20, -10, 0])color("yellow")union()linear_extrude(height=5)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([35, 0, 0])circle(d=5,$fn=64);
                translate([0, 15, 0])circle(d=5,$fn=64);
                translate([35, 15, 0])circle(d=5,$fn=64);
              }

    translate([0, 0, 5])color("orange")union()linear_extrude(height=5)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([35, 0, 0])circle(d=5,$fn=64);
                translate([0, 15, 0])circle(d=5,$fn=64);
                translate([35, 15, 0])circle(d=5,$fn=64);
              }

    translate([-20, 0, 10])color("red")union()linear_extrude(height=5)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([35, 0, 0])circle(d=5,$fn=64);
                translate([0, 15, 0])circle(d=5,$fn=64);
                translate([35, 15, 0])circle(d=5,$fn=64);
              }

    translate([0, -10, 15])color("pink")union()linear_extrude(height=5)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([35, 0, 0])circle(d=5,$fn=64);
                translate([0, 15, 0])circle(d=5,$fn=64);
                translate([35, 15, 0])circle(d=5,$fn=64);
              }

    translate([0, 0, 17.5])color("purple")union()linear_extrude(height=5)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([35, 0, 0])circle(d=5,$fn=64);
                translate([0, 15, 0])circle(d=5,$fn=64);
                translate([35, 15, 0])circle(d=5,$fn=64);
              }

    translate([0, 0, 22.5])color("blue")union()linear_extrude(height=5)translate([5, 5, 0])hull(){
                circle(d=10,$fn=64);
                translate([30, 0, 0])circle(d=10,$fn=64);
                translate([0, 10, 0])circle(d=10,$fn=64);
                translate([30, 10, 0])circle(d=10,$fn=64);
              }

  }
}
$fn=64;
Rcube();
