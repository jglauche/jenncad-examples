module CoinBattery(){
  cylinder(d=30,h=3.2,$fn=120);}
module CoinBattery_cut_to_20_0(){
  cylinder(d=30,h=20.008,$fn=120);}
module CutExample(){
  color("teal")difference(){
      translate([-50, -50, 0])cube([100, 100, 20]);
      translate([-34, -34, -0.1])color("silver")CoinBattery();
      translate([34, -34, -0.1])color("silver")CoinBattery();
      translate([0, 0, -0.004])color("silver")CoinBattery_cut_to_20_0();
    }
}
$fn=64;
CutExample();
