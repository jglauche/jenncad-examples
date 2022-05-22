module SlotExample(){
  union(){
    translate([-100, 0, 0])union()color("red")hull(){
            circle(d=10,$fn=64);
            translate([30, 0, 0])circle(d=10,$fn=64);
          }

    translate([-50, 0, 0])union()color("orange")linear_extrude(height=10)hull(){
              circle(d=10,$fn=64);
              translate([30, 0, 0])circle(d=10,$fn=64);
            }

    color("gold")linear_extrude(height=10)hull(){
          circle(d=10,$fn=64);
          translate([0, 30, 0])circle(d=10,$fn=64);
        }

    translate([20, 0, 0])union()color("blue")linear_extrude(height=10)hull(){
              circle(d=10,$fn=64);
              translate([0, -30, 0])circle(d=10,$fn=64);
            }

    translate([40, 0, 0])union()color("purple")linear_extrude(height=10)hull(){
              circle(d=10,$fn=64);
              translate([15, -30, 0])circle(d=10,$fn=64);
            }

    translate([60, 0, 0])union()color("green")linear_extrude(height=10)hull(){
              circle(d=10,$fn=64);
              translate([30, 30, 0])circle(d=10,$fn=64);
            }

  }
}
$fn=64;
SlotExample();
