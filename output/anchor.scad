module Anchor(){
  translate([21, 11.65, 0])color("SteelBlue")difference(){
        translate([5, 5, 0])difference(){
            translate([-5, -5, 0])difference(){
                translate([-21, -11.65, 0])cube([42, 23.3, 5]);
                translate([5, 5, -0.1])cylinder(d=3,h=5.2,$fn=64);
                translate([-5, -5, -0.1])cylinder(d=3,h=5.2,$fn=64);
              }

            translate([0, 0, -0.1])cylinder(d1=3,d2=6,h=5.2,$fn=64);
          }

        translate([-5, -5, -0.1])cylinder(d1=3,d2=6,h=5.2,$fn=64);
      }
}
$fn=64;
Anchor();
