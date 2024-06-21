$fa = 1.0;
$fs = 0.4;
color("slategray"){
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
    }
}