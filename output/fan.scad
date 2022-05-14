module Fan(){
  difference(){
    union(){
      difference(){
        translate([-12.5, -12.5, 0])cube([25, 25, 10]);
        translate([0, 0, -0.1])cylinder(d=23.5,h=10.2,$fn=94);
      }

      cylinder(d=15.7,h=10,$fn=64);
    }

    translate([-9.8, 9.8, -0.1])cylinder(d=2.6,h=10.2,$fn=64);
    translate([9.8, 9.8, -0.1])cylinder(d=2.6,h=10.2,$fn=64);
    translate([-9.8, -9.8, -0.1])cylinder(d=2.6,h=10.2,$fn=64);
    translate([9.8, -9.8, -0.1])cylinder(d=2.6,h=10.2,$fn=64);
  }
}
$fn=64;
color("black")Fan();
