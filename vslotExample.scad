 include <vSlots.scad>
 color("lightgray"){
     vslot(length=50, type=4040);
     translate([70,0,0]) vslot(length=60,type=2020);
     translate([140,0,0]) rotate([0,0,90]) vslot(length=70,type=2040);
     translate([190,0,0]) rotate([0,0,90]) vslot(length=80,type=2060);
     translate([120,100,0]) vslot(length=100,type=2080);
     translate([80,120,0]) rotate([0,0,180]) vslot(length=90,type="cbeam");
 }