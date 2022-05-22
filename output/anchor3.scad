module TestModule(){
  difference(){
    cube([60, 20, 5]);
    translate([23, 10, -0.1])cylinder(d=10,h=5.2,$fn=64);
    translate([42, 10, -0.1])cylinder(d=10,h=5.2,$fn=64);
    translate([5, 15, -0.1])cylinder(d=3,h=5.2,$fn=64);
    translate([55, 15, -0.1])cylinder(d=3,h=5.2,$fn=64);
    translate([5, 5, -0.1])cylinder(d=3,h=5.2,$fn=64);
    translate([55, 5, -0.1])cylinder(d=3,h=5.2,$fn=64);
  }
}
module Anchor3(){
  translate([55, 5, 2])difference(){
      translate([-50, 0, 0])difference(){
          translate([50, 10, 0])difference(){
              translate([-50, 0, 0])difference(){
                  translate([55, -13, -2])union(){
                      translate([-18, 8, 0])difference(){
                          union(){
                            translate([-19, 0, 0])difference(){
                                union(){
                                  translate([-23, -10, 0])color("lightblue")TestModule();
                                  translate([-7.5, -10, 0])color("navy")cube([15, 20, 15]);
                                }

                                translate([0, 0, -0.1])color("Aquamarine")cylinder(d=10,h=15.2,$fn=64);
                              }

                            translate([-7.5, -10, 0])color("purple")union()linear_extrude(height=15)translate([2.5, 2.5, 0])hull(){
                                        circle(d=5,$fn=64);
                                        translate([10, 0, 0])circle(d=5,$fn=64);
                                        translate([0, 15, 0])circle(d=5,$fn=64);
                                        translate([10, 15, 0])circle(d=5,$fn=64);
                                      }

                          }

                          translate([0, 0, -0.1])color("Aquamarine")cylinder(d=10,h=15.2,$fn=64);
                        }

                      color("gold")cube([15, 18, 5]);
                    }

                  translate([0, 0, -0.1])color("Aquamarine")cylinder(d=5.5,h=15.2,$fn=6);
                }

              translate([0, 0, -0.1])color("Aquamarine")cylinder(d=5.5,h=15.2,$fn=6);
            }

          translate([0, 0, -0.1])color("Aquamarine")cylinder(d=5.5,h=15.2,$fn=6);
        }

      translate([0, 0, -0.1])color("Aquamarine")cylinder(d=5.5,h=15.2,$fn=6);
    }
}
$fn=64;
Anchor3();
