module AnchorFromExample(){
  union(){
    color("blue")cylinder(d=10,h=5,$fn=64);
    translate([11, 0, 0])color("navy")cylinder(d=10,h=5,$fn=64);
    translate([22, 0, 0])color("navy")cylinder(d=10,h=5,$fn=64);
    translate([0, 11, 0])union(){
        color("blue")cylinder(d=10,h=5,$fn=64);
        translate([11, 0, 0])color("navy")cylinder(d=10,h=5,$fn=64);
        translate([22, 0, 0])color("navy")cylinder(d=10,h=5,$fn=64);
      }

    translate([0, 22, 0])union(){
        color("blue")cylinder(d=10,h=5,$fn=64);
        translate([11, 0, 0])color("navy")cylinder(d=10,h=5,$fn=64);
        translate([22, 0, 0])color("navy")cylinder(d=10,h=5,$fn=64);
      }

  }
}
$fn=64;
AnchorFromExample();
