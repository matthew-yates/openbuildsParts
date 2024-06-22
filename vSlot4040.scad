$fa = 1.0;
$fs = 0.4;

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

module mids(){
    hull(){
        translate([-5.42,0,0]) square([10.84,1.8]);
        translate([-6.875,1.455,0]) square([13.75,0.345]);
    }
    translate([2.7,1.8,0]) square([1.8,1.961]);
    translate([-4.5,1.8,0]) square([1.8,1.961]);
    translate([2.7,3.761,0]) rotate([0,0,-45]) square([1.5,4.808]);
    translate([-2.7,3.761,0]) rotate([0,0,45]) translate([-1.5,0,0]) square([1.5,4.808]);
}
 
module vslot4040(){
   corner();
   translate([40,0,0]) rotate([0,0,90]) corner();
   translate([40,40,0]) rotate([0,0,180]) corner();
   translate([0,40,0]) rotate([0,0,270]) corner();
   translate([10,10,0]) rcenter();
   translate([30,30,0])  rotate([0,0,180]) rcenter();
   translate([30,10,0]) rotate([0,0,90]) rcenter();
   translate([10,30,0]) rotate([0,0,270]) rcenter();
   module mids2(){
       difference(){
           mids();
           translate([0,-0.+212,0]) rotate([0,0,45]) translate([-0.15,0,0]) square(0.3);
       }
   }
   translate([20,0,0]) mids2();
   translate([0,20]) rotate([0,0,-90]) mids2();
   translate([20,40,0]) rotate([0,0,180]) mids2();
   translate([40,20]) rotate([0,0,90]) mids2();
}
 
 // linear extrude height is desired length of v-slot
 color("slategray"){
     linear_extrude(height=100) vslot4040();
 }
