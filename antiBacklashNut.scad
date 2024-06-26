$fa = 1.0;
$fs = 0.4;

module regular_polygon(order = 4, r=1){
    angles=[ for (i = [0:order-1]) i*(360/order) ];
    coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
    polygon(coords);
}

color("slategray"){
    difference(){
        hull(){
            translate([3,3,0]) cylinder(r=3,h=12);
            translate([31,3,0]) cylinder(r=3,h=12);
            translate([3,30,0]) cylinder(r=3,h=12);
            translate([31,30,0]) cylinder(r=3,h=12);}
        translate([7,10,-1]) cylinder(r=2.55,h=14);
        translate([27,10,-1]) cylinder(r=2.55,h=14);
        translate([7,10,-1]) rotate([0,0,30]) linear_extrude(6){regular_polygon(order=6,r=4.619);}
        translate([27,10,-1]) rotate([0,0,30]) linear_extrude(6){regular_polygon(order=6,r=4.619);}
        translate([16.5,-1,6]) rotate([270,0,0]) cylinder(r=4,h=35);
        translate([26.5,24,6]) rotate([270,0,0]) cylinder(r=2.1,h=10);
        hull(){
            translate([8,22.5,-1]) cylinder(r=2.5,h=14);
            translate([30,20,-1]) cube([5,5,14]);}
        translate([7,10,10]) cylinder(r=4.5,h=3);
        translate([27,10,10]) cylinder(r=4.5,h=3);}}