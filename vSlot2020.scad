$fa = 1.0;
$fs = 0.4;

module center(){
    difference(){
        translate([-3.9,-3.9,0]) square(7.8);
        circle(r=2.3);
        translate([0,3.688,0]) rotate([0,0,45]) square(0.3);
        translate([0,-4.112,0]) rotate([0,0,45]) square(0.3);
        translate([3.9,-0.212,0]) rotate([0,0,45]) square(0.3);
        translate([-3.9,-0.212,0]) rotate([0,0,45]) square(0.3);
        }
    }
 
 module corner(){
     translate([0.5,0.5,0]) circle(r=0.5);
     hull(){
         translate([0.5,0,0]) square([4.92,1.8]);
         translate([0.5,1.455,0]) square([6.375,0.345]);
     }
     hull(){
         translate([0,0.5,0]) square([1.8,4.92]);
         translate([1.455,0.5,0]) square([0.345,6.375]);
     }
     translate([1.8,1.8,0]) square(2.7);
     translate([4.5,3.44,0]) rotate([0,0,45]) square([3.763,1.5]);
 }
 
 module vslot(){
    corner();
    translate([20,0,0]) rotate([0,0,90]) corner();
    translate([20,20,0]) rotate([0,0,180]) corner();
    translate([0,20,0]) rotate([0,0,270]) corner();
    translate([10,10,0]) center();
     }
 
 // linear extrude height is desired length of v-slot
 linear_extrude(height=100) vslot();