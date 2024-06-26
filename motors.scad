$fa = 1.0;
$fs = 0.4;

//NEMA 17
module ends17(hole=0){color("silver"){
    difference(){
        linear_extrude(8.75){polygon(points=[[3.381,1.602],[5.321,0],[21.21,0],[21.21,21.21],[0,21.21],[0,5.321],[1.602,3.381]]);}
        if(hole==1){translate([5.71,5.71,2.75]) cylinder(r=1.5,h=7);}
        if(hole==0){};}}}
//        
module main17(){color("slategray"){translate([0.1,0.1,8.75])
    linear_extrude(30.5){polygon(points=[[7.715,0],[21.11,0],[21.11,21.11],[0,21.11],[0,7.715],[1.598,5.479],[3.431,3.432],[5.478,1.599]]);}}}
//
module nema17(){
    //bottom
    ends17();
    translate([42.42,42.42,0]) rotate([0,0,180]) ends17();
    translate([42.42,0,0]) rotate([0,0,90]) ends17();
    translate([0,42.42,0]) rotate([0,0,270]) ends17();
    //middle
    main17();
    translate([42.22,42.22,0]) rotate([0,0,180]) main17();
    translate([42.22,0,0]) rotate([0,0,90]) main17();
    translate([0,42.22,0]) rotate([0,0,270]) main17();
    //top
    translate([0,0,39.25]) ends17(hole=1);
    translate([42.42,42.42,39.25]) rotate([0,0,180]) ends17(hole=1);
    translate([42.42,0,39.25]) rotate([0,0,90]) ends17(hole=1);
    translate([0,42.42,39.25]) rotate([0,0,270]) ends17(hole=1);
    color("silver"){translate([21.21,21.21,48]) cylinder(r=11,h=2);
        difference(){
            translate([21.21,21.21,50]) cylinder(r=2.5,h=22);
            translate([14.21,18.71,57]) cube([5,5,16]);}}}
//
//NEMA 23
module ends23(){color("slategray"){
hull(){
    translate([2.5,12.13,0]) cylinder(r=2.5,h=11);
    translate([9.63,9.63,0]) cube([5,5,11]);
    translate([0,23.2,0]) cube([5,5,11]);
    translate([9.63,23.2,0]) cube([5,5,11]);}
hull(){
    translate([12.13,2.5,0]) cylinder(r=2.5,h=11);
    translate([9.63,9.63,0]) cube([5,5,11]);
    translate([23.2,0,0]) cube([5,5,11]);
    translate([23.2,9.63,0]) cube([5,5,11]);}
difference(){
    translate([4.63,4.63,0]) cube([5,5,11]);
    translate([4.63,4.63,-1]) cylinder(r=5,h=13);}
translate([14.63,14.63,0]) cube([13.57,13.57,11]);}}
//
module main23(){color("slategray"){
hull(){
    translate([2.5,12.23,0]) cylinder(r=2.5,h=34);
    translate([9.73,9.73,0]) cube([5,5,34]);
    translate([0.1,23.1,0]) cube([5,5,34]);
    translate([9.73,23.1,0.1]) cube([5,5,34]);}
hull(){
    translate([12.23,2.5,0]) cylinder(r=2.5,h=34);
    translate([9.73,9.73,0]) cube([5,5,34]);
    translate([23.1,0.1,0]) cube([5,5,34]);
    translate([23.1,9.73,0]) cube([5,5,34]);}
difference(){
    translate([4.73,4.73,0]) cube([5,5,34]);
    translate([4.73,4.73,-1]) cylinder(r=5,h=36);}
translate([14.53,14.53,0]) cube([13.57,13.57,34]);}}
//
module nema23(type="lt"){
    //bottom
    ends23();
    translate([56.4,56.4,0]) rotate([0,0,180]) ends23();
    translate([56.4,0,0]) rotate([0,0,90]) ends23();
    translate([0,56.4,0]) rotate([0,0,270]) ends23();
    //middle
    translate([0,0,11]) main23();
    translate([56.2,56.2,11]) rotate([0,0,180]) main23();
    translate([56.2,0,11]) rotate([0,0,90]) main23();
    translate([0,56.2,11]) rotate([0,0,270]) main23();
    if(type=="lt"){
    //top
    difference(){
        union(){
            translate([0,0,45]) ends23();
            translate([56.4,56.4,45]) rotate([0,0,180]) ends23();
            translate([56.4,0,45]) rotate([0,0,90]) ends23();
            translate([0,56.4,45]) rotate([0,0,270]) ends23();}
        translate([-1,-1,51.2]) cube([60,60,10]);}
    color("slategray") {
        difference(){
            union(){hull(){
                translate([4.6,4.6,51.1]) cylinder(r=4.6,h=4.8);
                translate([4.6,51.8,51.1]) cylinder(r=4.6,h=4.8);
                translate([51.8,4.6,51.1]) cylinder(r=4.6,h=4.8);
                translate([51.8,51.8,51.1]) cylinder(r=4.6,h=4.8);}}
        translate([4.6,4.6,50.1]) cylinder(r=2.55,h=6.8);
        translate([4.6,51.8,50.1]) cylinder(r=2.55,h=6.8);
        translate([51.8,4.6,50.1]) cylinder(r=2.55,h=6.8);
        translate([51.8,51.8,50.1]) cylinder(r=2.55,h=6.8);}}
    color("silver") {
        translate([28.2,28.2,55.9]) cylinder(r=19.05,h=1.6);
        difference(){
            translate([28.2,28.2,57.5]) cylinder(r=3.175,h=19);
            translate([18.525,24.7,61.5]) cube([7,7,16]);}}
    }
    if(type=="ht"){
    //middle
    translate([0,0,41]) main23();
    translate([56.2,56.2,41]) rotate([0,0,180]) main23();
    translate([56.2,0,41]) rotate([0,0,90]) main23();
    translate([0,56.2,41]) rotate([0,0,270]) main23();
    //top
    difference(){
        union(){
            translate([0,0,75]) ends23();
            translate([56.4,56.4,75]) rotate([0,0,180]) ends23();
            translate([56.4,0,75]) rotate([0,0,90]) ends23();
            translate([0,56.4,75]) rotate([0,0,270]) ends23();}
        translate([-1,-1,81.2]) cube([60,60,10]);}
    color("slategray") {
        difference(){
            union(){hull(){
                translate([4.6,4.6,81.1]) cylinder(r=4.6,h=4.8);
                translate([4.6,51.8,81.1]) cylinder(r=4.6,h=4.8);
                translate([51.8,4.6,81.1]) cylinder(r=4.6,h=4.8);
                translate([51.8,51.8,81.1]) cylinder(r=4.6,h=4.8);}}
        translate([4.6,4.6,80.1]) cylinder(r=2.55,h=6.8);
        translate([4.6,51.8,80.1]) cylinder(r=2.55,h=6.8);
        translate([51.8,4.6,80.1]) cylinder(r=2.55,h=6.8);
        translate([51.8,51.8,80.1]) cylinder(r=2.55,h=6.8);}}
    color("silver") {
        translate([28.2,28.2,85.9]) cylinder(r=19.05,h=1.6);
        difference(){
            translate([28.2,28.2,87.5]) cylinder(r=3.175,h=19);
            translate([18.525,24.7,91.5]) cube([7,7,16]);}}
    }}
//