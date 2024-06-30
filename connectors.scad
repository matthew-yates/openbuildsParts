$fa = 1.0;
$fs = 0.4;
//
// black angle corner connection
module angleCorner(){color("slategray"){
    difference(){
    cube([20,20,20]);
    translate([-1,0,1]) rotate([45,0,0]) cube([40,40,20]);
    translate([10,10,-1]) cylinder(r=3.6,h=20);
    translate([10,10,3.5]) cylinder(r=5.5,h=20);
    translate([10,2,10]) rotate([270,0,0]) cylinder(r=3.6,h=20);
    translate([10,-3.5,10]) rotate([270,0,0]) cylinder(r=5.5,h=20);}}}
// 90 degree joining plate
module join90deg(){color("silver"){
    difference(){
        cube([60,60,4]);
        translate([10,10,-1]) cylinder(r=2.65,h=6);
        translate([30,10,-1]) cylinder(r=2.65,h=6);
        translate([50,10,-1]) cylinder(r=2.65,h=6);
        translate([10,30,-1]) cylinder(r=2.65,h=6);
        translate([10,50,-1]) cylinder(r=2.65,h=6);
        translate([60,20,-1]) rotate([0,0,45]) cube([60,60,6]);}}}
//
// cast corner bracket 
module cornerBracket(){color("silver"){
    difference(){
        cube([20,20,17]);
        translate([20,3,-1]) rotate([0,0,45]) cube([20,25,22]);
        translate([3,3,2]) cube([20,20,13]);
        hull(){
            translate([8.5,-1,8.5]) rotate([270,0,0]) cylinder(r=2.9,h=5);
            translate([11.5,-1,8.5]) rotate([270,0,0]) cylinder(r=2.9,h=5);}
        hull(){
            translate([-1,8.5,8.5]) rotate([0,90,0]) cylinder(r=2.9,h=5);
            translate([-1,11.5,8.5]) rotate([0,90,0]) cylinder(r=2.9,h=5);}}
    translate([1.5,-1,6.5]) cube([1.85,1,4]);
    translate([16.65,-1,6.5]) cube([1.85,1,4]);
    translate([-1,1.5,6.5]) cube([1,1.85,4]);
    translate([-1,16.65,6.5]) cube([1,1.85,4]);}}
//
// 8 mm lock collar
module lockCollar8mm(){color("slategray"){difference(){
    cylinder(r=7,h=7);
    translate([0,0,-1]) cylinder(r=4,h=9);
    translate([0,-3,3.5]) rotate([90,0,0]) cylinder(r=2.1,h=5);}}}
//