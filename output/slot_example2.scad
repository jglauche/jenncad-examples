module SlotExample2(){
  color("red")hull(){
      circle(d=10,$fn=64);
      translate([0, 30, 0])circle(d=20,$fn=80);
    }
}
$fn=64;
SlotExample2();
