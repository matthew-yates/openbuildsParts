$fa = 1.0;
$fs = 0.4;

//square center used in 2020, 2040, 2060, 2080 linear rail
module center(l=1,r=1,t=1,b=1){
    difference(){
        translate([-3.9,-3.9,0]) square(7.8);
        circle(r=2.3);
        if(t==1) {translate([0,3.688,0]) rotate([0,0,45]) square(0.3);}
        if(b==1) {translate([0,-4.112,0]) rotate([0,0,45]) square(0.3);}
        if(r==1) {translate([3.9,-0.212,0]) rotate([0,0,45]) square(0.3);}
        if(l==1) {translate([-3.9,-0.212,0]) rotate([0,0,45]) square(0.3);}
   }
}
//center with rounded edge used in 4040 linear rail
module rcenter(){
    difference(){
        hull(){
            translate([-3.9,-3.9,0]) square([3.9,7.8]);
            translate([-3.9,-3.9,0]) square([7.8,3.9]);
            circle(r=3.9);
        }
    circle(r=2.3);
    translate([0,-4.112,0]) rotate([0,0,45]) square(0.3);
    translate([-3.9,-0.212,0]) rotate([0,0,45]) square(0.3);
   }
}
// linear rail corners with edge radius of 0.5 mm
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
//middle connector
module mids(slot=0){
    difference(){
        union(){
            hull(){
                translate([-5.42,0,0]) square([10.84,1.8]);
                translate([-6.875,1.455,0]) square([13.75,0.345]);
            }
            translate([2.7,1.8,0]) square([1.8,1.961]);
            translate([-4.5,1.8,0]) square([1.8,1.961]);
            translate([2.7,3.761,0]) rotate([0,0,-45]) square([1.5,4.808]);
            translate([-2.7,3.761,0]) rotate([0,0,45]) translate([-1.5,0,0]) square([1.5,4.808]);
        }
    if(slot==1) {translate([0,-0.212,0]) rotate([0,0,45]) translate([-0.15,0,0]) square(0.3);}
    if(slot==0) {translate([0,-1.212,0]) rotate([0,0,45]) translate([-0.15,0,0]) square(0.3);
}}}
// inside corner connector on C-beam
module midc(){
    difference(){
        mids();
        translate([0,-10,0]) square([10,20]);
    }
    rotate([0,0,270]) difference(){
        mids();
        translate([-10,-10,0]) square([10,20]);
        }
    square(1.8);
    translate([1.739,0.739,0]) rotate([0,0,45]) square([7.581,1.5]);}
//
// vslot module parameters "length" in mm, type is 2020, 2040, 2060, 2080, 4040, or "cbeam"
//
module vslot(length=100,type=4040){
    linear_extrude(length){
        if(type==4040){
            union(){
                corner();
                translate([40,0,0]) rotate([0,0,90]) corner();
                translate([40,40,0]) rotate([0,0,180]) corner();
                translate([0,40,0]) rotate([0,0,270]) corner();
                translate([10,10,0]) rcenter();
                translate([30,30,0])  rotate([0,0,180]) rcenter();
                translate([30,10,0]) rotate([0,0,90]) rcenter();
                translate([10,30,0]) rotate([0,0,270]) rcenter();
                translate([20,0,0]) mids(slot=1);
                translate([0,20]) rotate([0,0,-90]) mids(slot=1);
                translate([20,40,0]) rotate([0,0,180]) mids(slot=1);
                translate([40,20]) rotate([0,0,90]) mids(slot=1);}}
        if(type==2020){
            union(){
                corner();
                translate([20,0,0]) rotate([0,0,90]) corner();
                translate([20,20,0]) rotate([0,0,180]) corner();
                translate([0,20,0]) rotate([0,0,270]) corner();
                translate([10,10,0]) center();}}
        if(type==2040){
            union(){
                corner();
                translate([40,0,0]) rotate([0,0,90]) corner();
                translate([40,20,0]) rotate([0,0,180]) corner();
                translate([0,20,0]) rotate([0,0,270]) corner();
                translate([20,0,0]) mids();
                translate([20,20]) rotate([0,0,180]) mids();
                translate([10,10,0]) center(l=1,r=0,t=1,b=1);
                translate([30,10,0]) center(l=0,r=1,t=1,b=1);}}
        if(type==2060){
            union(){
                corner();
                translate([60,0,0]) rotate([0,0,90]) corner();
                translate([60,20,0]) rotate([0,0,180]) corner();
                translate([0,20,0]) rotate([0,0,270]) corner();
                translate([20,0,0]) mids();
                translate([20,20]) rotate([0,0,180]) mids();
                translate([40,0,0]) mids();
                translate([40,20]) rotate([0,0,180]) mids();
                translate([10,10,0]) center(l=1,r=0,t=1,b=1);
                translate([30,10,0]) center(l=0,r=0,t=1,b=1);
                translate([50,10,0]) center(l=0,r=1,t=1,b=1);}}
        if(type==2080){
            union(){
                corner();
                translate([80,0,0]) rotate([0,0,90]) corner();
                translate([80,20,0]) rotate([0,0,180]) corner();
                translate([0,20,0]) rotate([0,0,270]) corner();
                translate([20,0,0]) mids();
                translate([20,20]) rotate([0,0,180]) mids();
                translate([40,0,0]) mids();
                translate([40,20]) rotate([0,0,180]) mids();
                translate([60,0,0]) mids();
                translate([60,20]) rotate([0,0,180]) mids();
                translate([10,10,0]) center(l=1,r=0,t=1,b=1);
                translate([30,10,0]) center(l=0,r=0,t=1,b=1);
                translate([50,10,0]) center(l=0,r=0,t=1,b=1);
                translate([70,10,0]) center(l=0,r=1,t=1,b=1);}}
        if(type=="cbeam"){
            union(){
                corner();
                translate([80,0,0]) rotate([0,0,90]) corner();
                translate([80,40,0]) rotate([0,0,180]) corner();
                translate([20,40,0]) rotate([0,0,180]) corner();
                translate([0,40,0]) rotate([0,0,270]) corner();
                translate([60,40,0]) rotate([0,0,270]) corner();
                translate([20,0,0]) mids();
                translate([20,20,0]) rotate([0,0,180]) midc();
                translate([60,20,0]) rotate([0,0,270]) midc();
                translate([0,20]) rotate([0,0,270]) mids();
                translate([40,0,0]) mids();
                translate([40,20]) rotate([0,0,180]) mids();
                translate([60,0,0]) mids();
                translate([80,20]) rotate([0,0,90]) mids();
                translate([10,10,0]) center(l=1,r=0,t=0,b=1);
                translate([10,30,0]) center(l=1,r=1,t=1,b=0);
                translate([30,10,0]) center(l=0,r=0,t=1,b=1);
                translate([50,10,0]) center(l=0,r=0,t=1,b=1);
                translate([70,30,0]) center(l=1,r=1,t=1,b=0);
                translate([70,10,0]) center(l=0,r=1,t=0,b=1);}}}}
 //