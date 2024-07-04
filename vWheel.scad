$fa = 1.0;
$fs = 0.4;

module regular_polygon(order = 4, r=1){
    angles=[ for (i = [0:order-1]) i*(360/order) ];
    coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
    polygon(coords);}

// wheel
color("whitesmoke") {rotate_extrude(angle=360) {translate([8,0,0]) rotate([0,0,270]) translate([-5.1,0,0]) polygon(points=[[0,1.802],[0,0],[4.6,0],[4.6,-0.992],[5.6,-0.992],[5.6,0],[10.2,0],[10.2,1.802],[8.05,3.966],[2.15,3.966]]);}}
// top bearing
color("slategray") {translate([0,0,0.5]) 
    difference(){
        cylinder(r=8,h=5);
        translate([0,0,-1]) cylinder(r=2.5,h=7);
        translate([0,0,4.7]) difference(){cylinder(r=6.8,h=1);
            translate([0,0,-1]) cylinder(r=4.3,h=3);}}}
// spacer
color("silver") {translate([0,0,-0.5]) difference(){cylinder(r=5,h=1);
    translate([0,0,-1]) cylinder(r=2.5,h=3);}}
// bottom bearing
color("slategray") {translate([0,0,-5.5]) 
    difference(){
        cylinder(r=8,h=5);
        translate([0,0,-1]) cylinder(r=2.5,h=7);
        translate([0,0,-0.7]) difference(){cylinder(r=6.8,h=1);
            translate([0,0,-1]) cylinder(r=4.3,h=3);}}}

color("silver") {translate([0,0,-10.27]) difference(){ {linear_extrude(4.77){regular_polygon(order=6,r=4.619);}}
    translate([0,0,-1]) cylinder(r=2.5,h=6.77);}}