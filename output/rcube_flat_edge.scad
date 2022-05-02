module RcubeFlatEdge(){
  union(){
    translate([-20, -10, 0])color("yellow")union()union(){
            translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=5,$fn=64);
                translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
                translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
                translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
              }

            translate([0, 10, 0])cube([40, 10.0, 5.0]);
          }

    translate([-20, -10, 0])translate([0, 0, 5])color("orange")union()union(){
              translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=5,$fn=64);
                  translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
                  translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
                  translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
                }

              cube([40, 10.0, 5.0]);
            }

    translate([-20, -10, 0])translate([0, 0, 10])color("red")union()union(){
              translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=5,$fn=64);
                  translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
                  translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
                  translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
                }

              cube([20.0, 20, 5.0]);
            }

    translate([-20, -10, 0])translate([0, 0, 15])color("pink")union()union(){
              translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=5,$fn=64);
                  translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
                  translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
                  translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
                }

              translate([20, 0, 0])cube([20.0, 20, 5.0]);
            }

    translate([-20, -10, 0])translate([0, 0, 20])color("purple")union()union(){
              translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=5,$fn=64);
                  translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
                  translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
                  translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
                }

              cube([20.0, 20, 5.0]);
              cube([40, 10.0, 5.0]);
            }

    translate([0, -10, 0])translate([0, 0, 25])color("blue")union()union(){
              translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=5,$fn=64);
                  translate([35, 0, 0])cylinder(d=5,h=5,$fn=64);
                  translate([0, 15, 0])cylinder(d=5,h=5,$fn=64);
                  translate([35, 15, 0])cylinder(d=5,h=5,$fn=64);
                }

              cube([20.0, 20, 5.0]);
              cube([40, 10.0, 5.0]);
            }

  }
}
$fn=64;
RcubeFlatEdge();
