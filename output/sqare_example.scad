module SqareExample(){
  color("navy")linear_extrude(height=5)difference(){
        translate([-20, -20, 0])square([40, 40]);
        translate([-10, -10, 0])union()union(){
              translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([15, 0, 0])circle(d=5,$fn=64);
                  translate([0, 15, 0])circle(d=5,$fn=64);
                  translate([15, 15, 0])circle(d=5,$fn=64);
                }

              translate([0, 10, 0])square([20, 10]);
              square([10, 20]);
            }

      }
}
$fn=64;
SqareExample();
