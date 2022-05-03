module CoinBattery(){
  cylinder(d=30,h=3.2,$fn=120);}
module PartUnionMove(){
  union(){
    translate([-15, 0, 0])color("red")union(){
          translate([0, 0, 4.2])color("silver")CoinBattery();
          translate([0, 0, 4.2])color("silver")CoinBattery();
          translate([0, 0, 8.4])color("silver")CoinBattery();
        }

    translate([15, 0, 0])color("blue")union(){
          color("silver")CoinBattery();
          translate([0, 0, 4.2])color("silver")CoinBattery();
          translate([0, 0, 8.4])color("silver")CoinBattery();
        }

  }
}
$fn=64;
PartUnionMove();
