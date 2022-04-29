module RcubeMoveOrigin(){
  union(){
    color("DarkOrchid")difference(){
        translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=2,$fn=64);
                translate([37, 0, 0])cylinder(d=5,h=2,$fn=64);
                translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
                translate([37, 18, 0])cylinder(d=5,h=2,$fn=64);
              }

        translate([0, 0, -0.1])translate([5, -5, 0])translate([0, 23, 0])cylinder(d=3,h=2.2,$fn=64);
      }

    translate([0, 0, 0])translate([0, 23, 0])color("blue")union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=2,$fn=64);
                translate([16, 0, 0])cylinder(d=5,h=2,$fn=64);
                translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
                translate([16, 18, 0])cylinder(d=5,h=2,$fn=64);
              }

    translate([0, 0, 0])translate([42, 0, 0])color("purple")union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=2,$fn=64);
                translate([37, 0, 0])cylinder(d=5,h=2,$fn=64);
                translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
                translate([37, 18, 0])cylinder(d=5,h=2,$fn=64);
              }

    translate([0, 0, 0])translate([30, 30, 0])color("MediumVioletRed")union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=2,$fn=64);
                translate([37, 0, 0])cylinder(d=5,h=2,$fn=64);
                translate([0, 18, 0])cylinder(d=5,h=2,$fn=64);
                translate([37, 18, 0])cylinder(d=5,h=2,$fn=64);
              }

  }
}
$fn=64;
RcubeMoveOrigin();
