module ExtrudeExample(){
  difference(){
    translate([-30, -30, 0])cube([60, 60, 5]);
    translate([0, 0, -0.004])linear_extrude(height=5.008)union(){
          circle(d=10,$fn=64);
          translate([10, 10, 0])circle(d=10,$fn=64);
          translate([-10, -10, 0])circle(d=10,$fn=64);
        }

  }
}
$fn=64;
color("SteelBlue")ExtrudeExample();
