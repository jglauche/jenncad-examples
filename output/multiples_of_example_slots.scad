module MultiplesOfExampleSlots(){
  color("teal")union(){
      hull(){
        cylinder(d=10,h=5,$fn=64);
        translate([10, 10, 0])cylinder(d=10,h=5,$fn=64);
      }

      translate([16, 0, 0])union()hull(){
            cylinder(d=10,h=5,$fn=64);
            translate([10, 10, 0])cylinder(d=10,h=5,$fn=64);
          }

      translate([32, 0, 0])union()hull(){
            cylinder(d=10,h=5,$fn=64);
            translate([10, 10, 0])cylinder(d=10,h=5,$fn=64);
          }

      translate([48, 0, 0])union()hull(){
            cylinder(d=10,h=5,$fn=64);
            translate([10, 10, 0])cylinder(d=10,h=5,$fn=64);
          }

    }
}
$fn=64;
MultiplesOfExampleSlots();
