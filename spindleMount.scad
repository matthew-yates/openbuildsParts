$fa = 1.0;
$fs = 0.4;
//
// front part
union(){
    difference(){
        hull(){
            translate([1.4,1.4]) cylinder(r=1.4,h=20);
            translate([89.4,1.4]) cylinder(r=1.4,h=20);
            translate([0,11,0]) cube([1,1,20]);
            translate([89.8,11,0]) cube([1,1,20]);}
        translate([8.6,-1,10]) rotate([270,0,0]) cylinder(r=3,h=14);
        translate([82.2,-1,10]) rotate([270,0,0]) cylinder(r=3,h=14);
        translate([8.6,-0.5,10]) rotate([270,0,0]) cylinder(r=5.1,h=2);
        translate([82.2,-0.5,10]) rotate([270,0,0]) cylinder(r=5.1,h=2);
        hull(){
            translate([20.45,-1,6]) rotate([270,0,0]) cylinder(r=2.5,h=2);
            translate([20.45,-1,14]) rotate([270,0,0]) cylinder(r=2.5,h=2);
            translate([70.35,-1,6]) rotate([270,0,0]) cylinder(r=2.5,h=2);
            translate([70.35,-1,14]) rotate([270,0,0]) cylinder(r=2.5,h=2);}}
    translate([19,2,7]) rotate([90,0,0]) linear_extrude(2){text("OPENBUILDS",size=6);}
    difference(){
        hull(){
            translate([23.05,18.994,0]) cylinder(r=1.3,h=20);
            translate([67.75,18.994,0]) cylinder(r=1.3,h=20);
            translate([21.75,12,0]) cube([2.6,2.6,20]);
            translate([66.45,12,0]) cube([2.6,2.6,20]);}
        translate([45.4,48.2,-1]) cylinder(r=35.5,h=22);}
    difference(){
        translate([18.75,12,0]) cube([3,3,20]);
        translate([18.75,15,,-1]) cylinder(r=3,h=22);}
    difference(){
        translate([69.05,12,0]) cube([3,3,20]);
        translate([72.05,15,,-1]) cylinder(r=3,h=22);}}
//        
// back part
translate([0,14,0]) union(){
    difference(){
        hull(){
            cube([5,5,20]);
            translate([85.8,0,0]) cube([5,5,20]);
            translate([5,80.1,0]) cylinder(r=5,h=20);
            translate([85.8,80.1,0]) cylinder(r=5,h=20);}
        translate([45.4,30.6,-1]) cylinder(r=35.5, h=22);
        translate([17.25,-1,-1]) cube([56.3,22,22]);
        translate([8.6,-1,10]) rotate([270,0,0]) cylinder(r=2.1,h=14);
        translate([82.2,-1,10]) rotate([270,0,0]) cylinder(r=2.1,h=14);
        translate([-1,20,10]) rotate([0,90,0]) cylinder(r=2.1,h=10);
        translate([81.8,20,10]) rotate([0,90,0]) cylinder(r=2.1,h=10);
        translate([-1,60,10]) rotate([0,90,0]) cylinder(r=2.1,h=10);
        translate([81.8,60,10]) rotate([0,90,0]) cylinder(r=2.1,h=10);
        translate([15.4,78.1,10]) rotate([270,0,0]) cylinder(r=2.1,h=8);
        translate([35.4,78.1,10]) rotate([270,0,0]) cylinder(r=2.1,h=8);
        translate([55.4,78.1,10]) rotate([270,0,0]) cylinder(r=2.1,h=8);
        translate([75.4,78.1,10]) rotate([270,0,0]) cylinder(r=2.1,h=8);
        translate([15.4,74.8,-1]) cylinder(r=2.1,h=22);
        translate([25.4,74.8,-1]) cylinder(r=2.1,h=22);
        translate([65.4,74.8,-1]) cylinder(r=2.1,h=22);
        translate([75.4,74.8,-1]) cylinder(r=2.1,h=22);}}
    
    
    
    
    
    
    
    