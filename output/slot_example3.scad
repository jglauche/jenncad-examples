module SlotExample3(){
  color("pink")hull(){
      cylinder(d1=30,d2=15,h=5,$fn=64);
      translate([0, 30, 0])cylinder(d1=30,d2=15,h=5,$fn=64);
    }
}
$fn=64;
SlotExample3();
