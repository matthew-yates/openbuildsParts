$fa = 1.0;
$fs = 0.4;
//
//build plate
module buildPlate(){color("slategray"){
difference(){
    // main plate
    hull(){
        translate([1.75,1.75,0]) cylinder(h=3,r=1.75);
        translate([214.25,1.75,0]) cylinder(h=3,r=1.75);
        translate([1.75,214.25,0]) cylinder(h=3,r=1.75);
        translate([214.25,214.25,0]) cylinder(h=3,r=1.75);
        }
    // 3.14 mm diameter holes
    translate([122,63,-1]) cylinder(h=5,r=1.57);
    translate([122,153,-1]) cylinder(h=5,r=1.57);
    translate([131.12,63,-1]) cylinder(h=5,r=1.57);
    translate([131.12,153,-1]) cylinder(h=5,r=1.57);
    // 3.5 mm diameter holes
    translate([110.5,123.17,-1]) cylinder(h=5,r=1.75);
    translate([110.5,134.1,-1]) cylinder(h=5,r=1.75);
    translate([120.64,123.17,-1]) cylinder(h=5,r=1.75);
    translate([120.64,134.3,-1]) cylinder(h=5,r=1.75);
    // 3.6 mm diameter holes
    translate([3.5,3.5,-1]) cylinder(h=5,r=1.8);
    translate([3.5,108,-1]) cylinder(h=5,r=1.8);
    translate([3.5,212.5,-1]) cylinder(h=5,r=1.8);
    translate([108,3.5,-1]) cylinder(h=5,r=1.8);
    translate([108,212.5,-1]) cylinder(h=5,r=1.8);
    translate([212.5,3.5,-1]) cylinder(h=5,r=1.8);
    translate([212.5,108,-1]) cylinder(h=5,r=1.8);
    translate([212.5,212.5,-1]) cylinder(h=5,r=1.8);
    translate([191,211,-1]) cylinder(h=5,r=1.8);
    translate([191,180,-1]) cylinder(h=5,r=1.8);
    translate([108,108,-1]) cylinder(h=5,r=1.8);
    // 5 mm diameter holes
    translate([58.15,39,-1]) cylinder(h=5,r=2.5);
    translate([68.15,39,-1]) cylinder(h=5,r=2.5);
    translate([78.15,39,-1]) cylinder(h=5,r=2.5);
    translate([88.15,39,-1]) cylinder(h=5,r=2.5);
    translate([58.15,177,-1]) cylinder(h=5,r=2.5);
    translate([68.15,177,-1]) cylinder(h=5,r=2.5);
    translate([78.15,177,-1]) cylinder(h=5,r=2.5);
    translate([88.15,177,-1]) cylinder(h=5,r=2.5);
    translate([130.3,25.35,-1]) cylinder(h=5,r=2.5);
    translate([140.3,25.35,-1]) cylinder(h=5,r=2.5);
    translate([150.3,25.35,-1]) cylinder(h=5,r=2.5);
    translate([160.3,25.35,-1]) cylinder(h=5,r=2.5);
    translate([130.3,190.65,-1]) cylinder(h=5,r=2.5);
    translate([140.3,190.65,-1]) cylinder(h=5,r=2.5);
    translate([150.3,190.65,-1]) cylinder(h=5,r=2.5);
    translate([160.3,190.65,-1]) cylinder(h=5,r=2.5);
    translate([75.7,52.65,-1]) cylinder(h=5,r=2.5);
    translate([75.7,163.65,-1]) cylinder(h=5,r=2.5);
    translate([77.68,87.675,-1]) cylinder(h=5,r=2.5);
    translate([138.32,87.675,-1]) cylinder(h=5,r=2.5);
    translate([77.68,128.325,-1]) cylinder(h=5,r=2.5);
    translate([138.32,128.325,-1]) cylinder(h=5,r=2.5);
    translate([87.68,97.84,-1]) cylinder(h=5,r=2.5);
    translate([128.32,97.84,-1]) cylinder(h=5,r=2.5);
    translate([87.68,118.16,-1]) cylinder(h=5,r=2.5);
    translate([128.32,118.16,-1]) cylinder(h=5,r=2.5);
    translate([98,108,-1]) cylinder(h=5,r=2.5);
    translate([118,108,-1]) cylinder(h=5,r=2.5);
    // 7.2 mm diameter holes
    translate([55.7,25.55,-1]) cylinder(h=5,r=3.6);
    translate([65.7,25.55,-1]) cylinder(h=5,r=3.6);
    translate([75.7,25.55,-1]) cylinder(h=5,r=3.6);
    translate([85.7,25.55,-1]) cylinder(h=5,r=3.6);
    translate([55.7,190.85,-1]) cylinder(h=5,r=3.6);
    translate([65.7,190.85,-1]) cylinder(h=5,r=3.6);
    translate([75.7,190.85,-1]) cylinder(h=5,r=3.6);
    translate([85.7,190.85,-1]) cylinder(h=5,r=3.6);
    translate([127.85,39.2,-1]) cylinder(h=5,r=3.6);
    translate([137.85,39.2,-1]) cylinder(h=5,r=3.6);
    translate([147.85,39.2,-1]) cylinder(h=5,r=3.6);
    translate([157.85,39.2,-1]) cylinder(h=5,r=3.6);
    translate([127.85,177.2,-1]) cylinder(h=5,r=3.6);
    translate([137.85,177.2,-1]) cylinder(h=5,r=3.6);
    translate([147.85,177.2,-1]) cylinder(h=5,r=3.6);
    translate([157.85,177.2,-1]) cylinder(h=5,r=3.6);
    translate([140.3,52.65,-1]) cylinder(h=5,r=3.6);
    // small slots
    translate([84.75,9.38,-1])
    hull(){
        cylinder(h=5,r=1.5);
        translate([6.5,0,0]) cylinder(h=5,r=1.5);}
    translate([104.75,9.38,-1])
    hull(){
        cylinder(h=5,r=1.5);
        translate([6.5,0,0]) cylinder(h=5,r=1.5);}
    translate([124.75,9.38,-1])
    hull(){
        cylinder(h=5,r=1.5);
        translate([6.5,0,0]) cylinder(h=5,r=1.5);}
    translate([84.75,206.62,-1])
    hull(){
        cylinder(h=5,r=1.5);
        translate([6.5,0,0]) cylinder(h=5,r=1.5);}
    translate([104.75,206.62,-1])
    hull(){
        cylinder(h=5,r=1.5);
        translate([6.5,0,0]) cylinder(h=5,r=1.5);}
    translate([124.75,206.62,-1])
    hull(){
        cylinder(h=5,r=1.5);
        translate([6.5,0,0]) cylinder(h=5,r=1.5);}
    // large slots
    translate([98,39,-1])
    hull(){
        cylinder(h=5,r=2.5);
        translate([20,0,0]) cylinder(h=5,r=2.5);}
    translate([98,177,-1])
    hull(){
        cylinder(h=5,r=2.5);
        translate([20,0,0]) cylinder(h=5,r=2.5);}
}}}
//
// C-Beam End Mount
module cBeamEndMount(){color("slategray"){
difference(){
    cube([80,50,12]);
    translate([30,-1,6]) rotate([-90,0,0]) cylinder(r=2.1,h=15);
    translate([50,-1,6]) rotate([-90,0,0]) cylinder(r=2.1,h=15);
    translate([16.43,41.1,-1]) cylinder(r=2.1,h=14);
    translate([63.57,41.1,-1]) cylinder(r=2.1,h=14);
    translate([10,20,10.45]) cylinder(r=4.6,h=2);
    translate([70,20,10.45]) cylinder(r=4.6,h=2);
    translate([30,40,10.45]) cylinder(r=4.6,h=2);
    translate([50,40,10.45]) cylinder(r=4.6,h=2);
    translate([10,20,-1]) cylinder(r=2.6,h=14);
    translate([70,20,-1]) cylinder(r=2.6,h=14);
    translate([30,40,-1]) cylinder(r=2.6,h=14);
    translate([50,40,-1]) cylinder(r=2.6,h=14);
    translate([40,17.6,-1]) cylinder(r=5.588,h=14);
    translate([40,17.6,-1]) cylinder(r=8.05,h=5.5);
}}}
//
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