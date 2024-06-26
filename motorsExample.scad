include <motors.scad>
translate([210,0,0]) rotate([90,0,0]) nema17();
translate([100,0,0]) rotate([90,0,0]) nema23();
translate([0,30,0]) rotate([90,0,0]) nema23(type="ht");