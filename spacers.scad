$fa = 1.0;
$fs = 0.4;
// set desired length in mm
// 1.5 inch = 88.1 mm
// 1/4 inch = 6.35 mm
// 1/8 inch = 3.175 mm
//
//aluminum spacers
module spacerAl(length=3){color("silver"){
    difference(){
        linear_extrude(length){circle(5);}
        translate([0,0,-1]) linear_extrude(length+2){circle(2.65);}}}}
//
//Nylon spacers
module spacerNylon(length=3){color("white"){
    difference(){
        linear_extrude(length){circle(4);}
        translate([0,0,-1]) linear_extrude(length+2){circle(2.6);}}}}
//