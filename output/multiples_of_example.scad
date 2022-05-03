module CoinBattery(){
  cylinder(d=30,h=3.2,$fn=120);}
module MultiplesOfExample(){
  union(){
    color("silver")CoinBattery();
    translate([0, 0, 3.2])color("silver")CoinBattery();
    translate([0, 0, 6.4])color("silver")CoinBattery();
    translate([0, 0, 9.6])color("silver")CoinBattery();
    translate([0, 0, 12.8])color("silver")CoinBattery();
    translate([0, 0, 16])color("silver")CoinBattery();
    translate([0, 0, 19.2])color("silver")CoinBattery();
    translate([0, 0, 22.4])color("silver")CoinBattery();
    translate([0, 0, 25.6])color("silver")CoinBattery();
    translate([0, 0, 28.8])color("silver")CoinBattery();
    color("orange")union(){
        translate([0, 0, 28.8])color("silver")CoinBattery();
        translate([0, 0, 33])color("silver")CoinBattery();
        translate([0, 0, 37.2])color("silver")CoinBattery();
        translate([0, 0, 41.4])color("silver")CoinBattery();
        translate([0, 0, 45.6])color("silver")CoinBattery();
        translate([0, 0, 49.8])color("silver")CoinBattery();
        translate([0, 0, 54])color("silver")CoinBattery();
        translate([0, 0, 58.2])color("silver")CoinBattery();
        translate([0, 0, 62.4])color("silver")CoinBattery();
        translate([0, 0, 66.6])color("silver")CoinBattery();
      }

    color("teal")union(){
        translate([-5, -5, 0])cube([10, 10, 10]);
        translate([-5, -5, 11])cube([10, 10, 10]);
        translate([-5, -5, 22])cube([10, 10, 10]);
        translate([-5, -5, 33])cube([10, 10, 10]);
        translate([-5, -5, 44])cube([10, 10, 10]);
        translate([-5, -5, 55])cube([10, 10, 10]);
        translate([-5, -5, 66])cube([10, 10, 10]);
        translate([-5, -5, 77])cube([10, 10, 10]);
      }

  }
}
$fn=64;
MultiplesOfExample();
