module FlipFeature(){
  translate([0, 0, 50])rotate([0, 90, 0])translate([-50, -20, -5])cube([100, 40, 10]);}
$fn=64;
color("red")FlipFeature();
