module MultiplesOfExampleSlots(){
  color("teal")union(){
      linear_extrude(height=5)hull(){
          circle(d=10,$fn=64);
          translate([10, 10, 0])circle(d=10,$fn=64);
        }

      translate([16, 0, 0])union()linear_extrude(height=5)hull(){
              circle(d=10,$fn=64);
              translate([10, 10, 0])circle(d=10,$fn=64);
            }

      translate([32, 0, 0])union()linear_extrude(height=5)hull(){
              circle(d=10,$fn=64);
              translate([10, 10, 0])circle(d=10,$fn=64);
            }

      translate([48, 0, 0])union()linear_extrude(height=5)hull(){
              circle(d=10,$fn=64);
              translate([10, 10, 0])circle(d=10,$fn=64);
            }

    }
}
$fn=64;
MultiplesOfExampleSlots();
