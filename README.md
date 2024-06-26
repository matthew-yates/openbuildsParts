# Openbuilds Parts

Created parametric models of some Openbuilds parts using OpenSCAD.  These were created by taking measurements off the [GrabCAD collection](https://grabcad.com/openbuilds-1) models that Openbuilds has posted.


## V-Slot Linear Rail
The file "vSlots.scad" creates an OpenSCAD function named "vslot" that can be used to generate models of Openbuilds V-Slot linear rail. The function "vslot" take two parameters "length" and "type". The length is the desired length of rail to be modeled (in mm). The "type" parameter accepts: 2020, 2040, 2060, 2080, 4040, and "cbeam", which models the following types of rail:

[20x20 mm V-slot linear rail](https://openbuildspartstore.com/v-slot-20x20-linear-rail/)

[20x40 mm V-slot linear rail](https://openbuildspartstore.com/v-slot-20x40-linear-rail/)

[20x60 mm V-slot linear rail](https://openbuildspartstore.com/v-slot-20x60-linear-rail/)

[20x80 mm V-slot linear rail](https://openbuildspartstore.com/v-slot-20x80-linear-rail/)

[40x40 mm V-slot linear rail](https://openbuildspartstore.com/v-slot-40x40-linear-rail/)

[C-Beam linear rail](https://openbuildspartstore.com/c-beam-linear-rail/)

If file "vSlots.scad" is saved in the same working directory used for modeling, the following example code:

```
 include <vSlots.scad>
 color("lightgray"){
     vslot(length=50, type=4040);
     translate([70,0,0]) vslot(length=60,type=2020);
     translate([140,0,0]) rotate([0,0,90]) vslot(length=70,type=2040);
     translate([190,0,0]) rotate([0,0,90]) vslot(length=80,type=2060);
     translate([120,100,0]) vslot(length=100,type=2080);
     translate([80,120,0]) rotate([0,0,180]) vslot(length=90,type="cbeam");
 }
```

Results in the model illustrated in the image below.

![V-Slot Examples](https://github.com/matthew-yates/openbuildsParts/blob/main/images/vslotExample.png)

## Stepper Motors
The file "motors.scad" creates two OpenSCAD functions named "nema17" and "nema23" that can be used to generate models of the three types of Openbuilds stepper motors:

[NEMA 17](https://openbuildspartstore.com/nema-17-stepper-motor/)

[NEMA 23](https://openbuildspartstore.com/nema-23-stepper-motor/)

[NEMA 23 - high torque](https://openbuildspartstore.com/nema-23-stepper-motor-high-torque-series/)

When the "nema23" function is called without arguments, or called as "nema23(type="lt")", it produces the model of the standard NEMA 23 motor.  Calling the function as "nema23(type="ht") produces the model of the high torque version.

If the file "motors.scad" is saved in the same working directory used for modeling, the following example code:

```
include <motors.scad>
translate([210,0,0]) rotate([90,0,0]) nema17();
translate([100,0,0]) rotate([90,0,0]) nema23();
translate([0,30,0]) rotate([90,0,0]) nema23(type="ht");
```

Results in the model illustrated in the image below.

![Stepper Motor Examples](https://github.com/matthew-yates/openbuildsParts/blob/main/images/motors.png)

In addition to the V-slot modeling function, the following models are provided:

buildPlate.scad --> [Build Plate](https://openbuildspartstore.com/build-plate/).

cBeamEndMount.scad --> [C-Beam End Mount](https://openbuildspartstore.com/c-beam-end-mount/).
