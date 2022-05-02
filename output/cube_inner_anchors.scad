module CubeInnerAnchors(){
  union(){
    difference(){
      translate([-20, -20, 0])color("hotpink")cube([40, 40, 10]);
      translate([0, -15, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
    }

    translate([0, 0, 10])difference(){
        translate([-20, 0, 0])color("steelblue")cube([40, 40, 10]);
        translate([-15, 35, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([15, 35, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([-15, 5, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([15, 5, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([-15, 20, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([15, 20, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([0, 35, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([0, 5, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
      }

    translate([0, 0, 20])difference(){
        color("pink")cube([40, 40, 10]);
        translate([5, 35, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([35, 35, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([5, 5, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([35, 5, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
      }

    translate([0, 0, 30])difference(){
        color("purple")cube([40, 40, 10]);
        translate([5, 35, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([35, 35, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([5, 5, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([35, 5, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([10, 30, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([30, 30, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([10, 10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([30, 10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([10, 20, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([30, 20, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([20, 30, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([20, 10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
      }

    translate([0, 0, 40])difference(){
        translate([0, -20, 0])color("lightblue")cube([40, 40, 10]);
        translate([5, 15, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([35, 15, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([5, -15, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([35, -15, -0.1])color("MediumVioletRed")cylinder(d=3,h=10.2,$fn=64);
        translate([10, 10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([30, 10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([10, -10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([30, -10, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([15, 0, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([25, 0, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([20, 5, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
        translate([20, -5, -0.1])color("MediumVioletRed")cylinder(d=2,h=10.2,$fn=64);
      }

  }
}
$fn=64;
CubeInnerAnchors();
