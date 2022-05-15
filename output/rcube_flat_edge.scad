module RcubeFlatEdge(){
  union(){
    translate([-20, -10, 0])color("yellow")union()linear_extrude(height=5)union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([35, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([35, 15, 0])circle(d=5,$fn=64);
                }

              translate([0, 10, 0])square([40, 10]);
            }

    translate([-20, -10, 5])color("orange")union()linear_extrude(height=5)union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([35, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([35, 15, 0])circle(d=5,$fn=64);
                }

              square([40, 10]);
            }

    translate([-20, -10, 10])color("red")union()linear_extrude(height=5)union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([35, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([35, 15, 0])circle(d=5,$fn=64);
                }

              square([20, 20]);
            }

    translate([-20, -10, 15])color("pink")union()linear_extrude(height=5)union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([35, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([35, 15, 0])circle(d=5,$fn=64);
                }

              translate([20, 0, 0])square([20, 20]);
            }

    translate([-20, -10, 20])color("purple")union()linear_extrude(height=5)union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([35, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([35, 15, 0])circle(d=5,$fn=64);
                }

              square([20, 20]);
              square([40, 10]);
            }

    translate([0, -10, 25])color("blue")union()linear_extrude(height=5)union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([35, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([35, 15, 0])circle(d=5,$fn=64);
                }

              square([20, 20]);
              square([40, 10]);
            }

  }
}
$fn=64;
RcubeFlatEdge();
