include <vSlots.scad>;
include <motors.scad>;
include <spacers.scad>;
include <plates.scad>;

// main structural frame
color("lightgray"){
    // bottom front
    translate([20,0,0]) rotate([90,0,90]) vslot(length=500,type=2060);
    // bottom left side
    translate([20,0,60]) rotate([0,90,90]) vslot(length=500,type=2060);
    // bottom right side
    translate([540,0,60]) rotate([0,90,90]) vslot(length=500,type=2060);
    // bottom back
    translate([20,360,0]) rotate([90,0,90]) vslot(length=500,type=2060);
    // left side gantry support
    translate([40,440,0]) rotate([0,0,90]) vslot(length=250,type=2060);
    translate([20,420,0]) rotate([0,0,0]) vslot(length=250,type=2060);
    // right side gantry support
    translate([520,440,0]) rotate([0,0,90]) vslot(length=250,type=2060);
    translate([460,420,0]) rotate([0,0,0]) vslot(length=250,type=2060);
    // x-axis c-beam
    translate([20,420,170]) rotate([0,270,180]) vslot(length=500,type="cbeam");
    // y-axis c-beam
    translate([310,0,20]) rotate([90,0,180]) vslot(length=500,type="cbeam");
    // z-axis c-beam
    translate([250,380,100]) rotate([0,0,180]) vslot(length=250,type="cbeam");
}
//

// c-beam end mounts
    // x-axis
    translate([520,370,250]) rotate([0,90,0]) cBeamEndMount();
    translate([20,370,170]) rotate([0,270,0]) cBeamEndMount();
    // y-axis
    translate([310,0,70]) rotate([90,180,0]) cBeamEndMount();
    translate([310,512,70]) rotate([270,0,180]) cBeamEndMount();
    // z-axis
    translate([250,330,100]) rotate([0,180,0]) cBeamEndMount();
    translate([170,330,350]) cBeamEndMount();

// aluminum spacers for motor mounts
    // x-axis
    translate([532,411.1,186.5]) rotate([0,90,0]) spacerAl(length=40);
    translate([532,411.1,233.5]) rotate([0,90,0]) spacerAl(length=40);
    // y-axis
    translate([293.6,552,28.9]) rotate([90,0,0]) spacerAl(length=40);
    translate([246.4,552,28.9]) rotate([90,0,0]) spacerAl(length=40);
    // z-axis
    translate([233.5,371.1,362]) spacerAl(length=40);
    translate([186.4,371.1,362]) spacerAl(length=40);


// motors
    // x-axis
    translate([628,359.3,181.8]) rotate([0,270,0]) nema23();
    // y-axis
    translate([242,608,24]) rotate([90,0,0]) nema23();
    // z-axis
    translate([181.8,375.7,457.9]) rotate([180,0,0]) nema23();

// build plate
translate([165,100,75]) buildPlate();

// simple cylinders to model lead screws
    // x-axis
    translate([8,387.8,210.1]) rotate([0,90,0]) cylinder(r=4,h=540);
    // y-axis
    translate([270,-12,52.5]) rotate([270,0,0]) cylinder(r=4,h=540);
    // z-axis
    translate([210.2,347.4,88]) cylinder(r=4,h=290);