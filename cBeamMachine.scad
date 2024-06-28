include <vSlots.scad>;
include <motors.scad>;
include <spacers.scad>;
include <plates.scad>;
include <connectors.scad>;

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

// 90 degree joining plates
translate([20,440,254]) rotate([180,0,0]) join90deg();
translate([520,440,254]) rotate([0,180,90]) join90deg();

// corner brackets
translate([20,422.5,60]) rotate([90,0,180]) cornerBracket();
translate([20,482.5,60]) rotate([90,0,180]) cornerBracket();
translate([20,18.5,20]) rotate([90,0,0]) cornerBracket();
translate([20,58.5,20]) rotate([90,0,0]) cornerBracket();
translate([20,378.5,20]) rotate([90,0,0]) cornerBracket();
translate([230,1.5,20]) rotate([90,0,180]) cornerBracket();
translate([230,401.5,20]) rotate([90,0,180]) cornerBracket();
translate([310,18.5,20]) rotate([90,0,0]) cornerBracket();
translate([310,418.5,20]) rotate([90,0,0]) cornerBracket();
translate([520,1.5,20]) rotate([90,0,180]) cornerBracket();
translate([520,41.5,20]) rotate([90,0,180]) cornerBracket();
translate([520,362.5,20]) rotate([90,0,180]) cornerBracket();
translate([520,438.5,60]) rotate([90,0,0]) cornerBracket();
translate([520,498.5,60]) rotate([90,0,0]) cornerBracket();
translate([38.5,420,20]) rotate([90,0,270]) cornerBracket();
translate([78.5,420,20]) rotate([90,0,270]) cornerBracket();
translate([478.5,420,20]) rotate([90,0,270]) cornerBracket();
translate([518.5,420,20]) rotate([90,0,270]) cornerBracket();
translate([40,440,0]) cornerBracket();
translate([40,440,233]) cornerBracket();
translate([500,440,0]) rotate([0,0,90]) cornerBracket();
translate([500,440,233]) rotate([0,0,90]) cornerBracket();

// simple cylinders to model lead screws
    // x-axis
    translate([8,387.8,210.1]) rotate([0,90,0]) cylinder(r=4,h=540);
    // y-axis
    translate([270,-12,52.5]) rotate([270,0,0]) cylinder(r=4,h=540);
    // z-axis
    translate([210.2,347.4,88]) cylinder(r=4,h=290);
