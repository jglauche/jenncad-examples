module HullExample(){
  translate([5, 5, 0])color("SteelBlue")hull(){
        cylinder(d=10,h=10,$fn=64);
        translate([10, 10, 0])cylinder(d=5,h=10,$fn=64);
      }
}
$fn=64;
HullExample();
