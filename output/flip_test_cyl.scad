module FlipTestCyl(){
  translate([0, 250, 0])union(){
      translate([0, -50, 0])union(){
          translate([0, -50, 0])union(){
              translate([0, -50, 0])union(){
                  translate([0, -50, 0])union(){
                      translate([0, -50, 21])rotate([0, 90, 0])translate([0, 0, -11.5])difference(){
                              cylinder(d=42,h=23,$fn=168);
                              translate([10.5, 10.5, -0.1])cylinder(d=5,h=23.2,$fn=64);
                            }

                      translate([0, 0, 21])rotate([0, 270, 0])translate([0, 0, -11.5])difference(){
                              cylinder(d=42,h=23,$fn=168);
                              translate([10.5, 10.5, -0.1])cylinder(d=5,h=23.2,$fn=64);
                            }

                    }

                  translate([0, 0, 21])rotate([90, 0, 0])translate([0, 0, -11.5])difference(){
                          cylinder(d=42,h=23,$fn=168);
                          translate([10.5, 10.5, -0.1])cylinder(d=5,h=23.2,$fn=64);
                        }

                }

              translate([0, 0, 21])rotate([270, 0, 0])translate([0, 0, -11.5])difference(){
                      cylinder(d=42,h=23,$fn=168);
                      translate([10.5, 10.5, -0.1])cylinder(d=5,h=23.2,$fn=64);
                    }

            }

          translate([0, 0, 11.5])rotate([180, 0, 0])translate([0, 0, -11.5])difference(){
                  cylinder(d=42,h=23,$fn=168);
                  translate([10.5, 10.5, -0.1])cylinder(d=5,h=23.2,$fn=64);
                }

        }

      difference(){
        cylinder(d=42,h=23,$fn=168);
        translate([10.5, 10.5, -0.1])cylinder(d=5,h=23.2,$fn=64);
      }

    }
}
$fn=64;
color("pink")FlipTestCyl();
