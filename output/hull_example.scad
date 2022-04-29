module HullExample(){
  translate([2.5, 2.5, 0])hull(){
      cylinder(d=5,h=10,$fn=64);
      translate([10, 0, 0])cylinder(d=5,h=10,$fn=64);
    }
}
$fn=64;
color("SteelBlue")HullExample();
