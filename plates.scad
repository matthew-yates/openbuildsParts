$fa = 1.0;
$fs = 0.4;
//
// C-beam gantry
module cBeamGantry(){color("slategray"){difference(){
    hull(){
        translate([4.635,4.635,0]) cylinder(r=4.635,h=6);
        translate([72.515,4.635,0]) cylinder(r=4.635,h=6);
        translate([4.635,72.515,0]) cylinder(r=4.635,h=6);
        translate([72.515,72.515,0]) cylinder(r=4.635,h=6);}
    // 4.2 mm diameter holes
    translate([18.575,18.575,-1]) cylinder(r=2.1,h=8);
    translate([18.575,58.575,-1]) cylinder(r=2.1,h=8);
    translate([58.575,18.575,-1]) cylinder(r=2.1,h=8);
    translate([58.575,58.575,-1]) cylinder(r=2.1,h=8);
    translate([28.575,8.575,-1]) cylinder(r=2.1,h=8);
    translate([28.575,68.575,-1]) cylinder(r=2.1,h=8);
    translate([48.575,8.575,-1]) cylinder(r=2.1,h=8);
    translate([48.575,68.575,-1]) cylinder(r=2.1,h=8);
    // 5.1 mm diameter holes
    translate([8.575,8.575,-1]) cylinder(r=2.55,h=8);
    translate([8.575,24.375,-1]) cylinder(r=2.55,h=8);
    translate([8.575,38.575,-1]) cylinder(r=2.55,h=8);
    translate([8.575,68.575,-1]) cylinder(r=2.55,h=8);
    translate([18.575,28.575,-1]) cylinder(r=2.55,h=8);
    translate([18.575,48.575,-1]) cylinder(r=2.55,h=8);
    translate([28.618,28.618,-1]) cylinder(r=2.55,h=8);
    translate([28.618,48.618,-1]) cylinder(r=2.55,h=8);
    translate([38.618,28.618,-1]) cylinder(r=2.55,h=8);
    translate([38.618,48.618,-1]) cylinder(r=2.55,h=8);
    translate([38.575,18.575,-1]) cylinder(r=2.55,h=8);
    translate([38.575,58.575,-1]) cylinder(r=2.55,h=8);
    translate([48.599,38.606,-1]) cylinder(r=2.55,h=8);
    translate([18.575,48.575,-1]) cylinder(r=2.55,h=8);
    translate([58.575,28.575,-1]) cylinder(r=2.55,h=8);
    translate([58.575,48.575,-1]) cylinder(r=2.55,h=8);
    translate([68.575,8.575,-1]) cylinder(r=2.55,h=8);
    translate([68.575,24.375,-1]) cylinder(r=2.55,h=8);
    translate([68.575,38.575,-1]) cylinder(r=2.55,h=8);
    translate([68.575,68.575,-1]) cylinder(r=2.55,h=8);
    // 7.2 mm diameter holes
    translate([8.796,52.848,-1]) cylinder(r=3.6,h=8);
    translate([68.592,52.848,-1]) cylinder(r=3.6,h=8);
    // slot
    hull(){
        translate([28.618,38.606,-1]) cylinder(r=2.55,h=8);
        translate([38.606,38.606,-1]) cylinder(r=2.55,h=8);}
    // recesses
    translate([8.575,24.325,4.5]) cylinder(r=4.5,h=2);
    translate([68.575,24.325,4.5]) cylinder(r=4.5,h=2);
    translate([8.575,52.825,4.5]) cylinder(r=6,h=2);
    translate([68.575,52.825,4.5]) cylinder(r=6,h=2);
    hull(){
        translate([28.545,28.545,4.5]) cylinder(r=4.92,h=2);
        translate([28.545,48.605,4.5]) cylinder(r=4.92,h=2);
        translate([48.605,48.605,4.5]) cylinder(r=4.92,h=2);
        translate([48.605,28.545,4.5]) cylinder(r=4.92,h=2);}}}}
//
// V-slot gantry plate 20-80 mm
module vslotGantry20_80(){color("slategray"){
    difference(){
        hull(){
            translate([3,3,0]) cylinder(r=3,h=3);
            translate([3,85,0]) cylinder(r=3,h=3);
            translate([124,3,0]) cylinder(r=3,h=3);
            translate([124,85,0]) cylinder(r=3,h=3);}
    // 5.1 mm diameter holes
    translate([13.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([23.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([33.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([43.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([53.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([63.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([73.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([83.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([93.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([103.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([113.65,23.68,-1]) cylinder(r=2.55,h=5);
    translate([83.65,13.68,-1]) cylinder(r=2.55,h=5);
    translate([93.65,13.68,-1]) cylinder(r=2.55,h=5);
    translate([103.65,13.68,-1]) cylinder(r=2.55,h=5);
    translate([113.65,13.68,-1]) cylinder(r=2.55,h=5);
    translate([13.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([23.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([33.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([43.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([53.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([63.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([73.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([83.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([93.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([103.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([113.65,64.32,-1]) cylinder(r=2.55,h=5);
    translate([83.65,74.32,-1]) cylinder(r=2.55,h=5);
    translate([93.65,74.32,-1]) cylinder(r=2.55,h=5);
    translate([103.65,74.32,-1]) cylinder(r=2.55,h=5);
    translate([113.65,74.32,-1]) cylinder(r=2.55,h=5);
    translate([33.65,33.68,-1]) cylinder(r=2.55,h=5);
    translate([43.65,33.68,-1]) cylinder(r=2.55,h=5);
    translate([63.65,33.68,-1]) cylinder(r=2.55,h=5);
    translate([83.65,33.68,-1]) cylinder(r=2.55,h=5);
    translate([93.65,33.68,-1]) cylinder(r=2.55,h=5);
    translate([33.65,53.68,-1]) cylinder(r=2.55,h=5);
    translate([43.65,53.68,-1]) cylinder(r=2.55,h=5);
    translate([63.65,53.68,-1]) cylinder(r=2.55,h=5);
    translate([83.65,53.68,-1]) cylinder(r=2.55,h=5);
    translate([93.65,53.68,-1]) cylinder(r=2.55,h=5);
    translate([53.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([63.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([73.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([83.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([93.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([103.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([113.65,43.68,-1]) cylinder(r=2.55,h=5);
    translate([48.65,28.68,-1]) cylinder(r=2.55,h=5);
    translate([78.65,28.68,-1]) cylinder(r=2.55,h=5);
    translate([48.65,58.68,-1]) cylinder(r=2.55,h=5);
    translate([78.65,58.68,-1]) cylinder(r=2.55,h=5);
    // 7.1 mm diameter holes
    translate([13.65,13.68,-1]) cylinder(r=3.55,h=5);
    translate([23.65,13.68,-1]) cylinder(r=3.55,h=5);
    translate([33.65,13.68,-1]) cylinder(r=3.55,h=5);
    translate([43.65,13.68,-1]) cylinder(r=3.55,h=5);
    translate([13.65,44,-1]) cylinder(r=3.55,h=5);
    translate([23.65,44,-1]) cylinder(r=3.55,h=5);
    translate([33.65,44,-1]) cylinder(r=3.55,h=5);
    translate([43.65,44,-1]) cylinder(r=3.55,h=5);
    translate([13.65,74.32,-1]) cylinder(r=3.55,h=5);
    translate([23.65,74.32,-1]) cylinder(r=3.55,h=5);
    translate([33.65,74.32,-1]) cylinder(r=3.55,h=5);
    translate([43.65,74.32,-1]) cylinder(r=3.55,h=5);
    // small slots
    hull(){
        translate([40.25,6,-1]) cylinder(r=1.5,h=5);
        translate([46.5,6,-1]) cylinder(r=1.5,h=5);}
    hull(){
        translate([60.25,6,-1]) cylinder(r=1.5,h=5);
        translate([66.5,6,-1]) cylinder(r=1.5,h=5);}
    hull(){
        translate([80.25,6,-1]) cylinder(r=1.5,h=5);
        translate([86.5,6,-1]) cylinder(r=1.5,h=5);}
    hull(){
        translate([40.25,82,-1]) cylinder(r=1.5,h=5);
        translate([46.5,82,-1]) cylinder(r=1.5,h=5);}
    hull(){
        translate([60.25,82,-1]) cylinder(r=1.5,h=5);
        translate([66.5,82,-1]) cylinder(r=1.5,h=5);}
    hull(){
        translate([80.25,82,-1]) cylinder(r=1.5,h=5);
        translate([86.5,82,-1]) cylinder(r=1.5,h=5);}
    // large slots
    hull(){
        translate([53.5,13.68,-1]) cylinder(r=2.5,h=5);
        translate([73.5,13.68,-1]) cylinder(r=2.5,h=5);}
    hull(){
        translate([53.5,74.32,-1]) cylinder(r=2.5,h=5);
        translate([73.5,74.32,-1]) cylinder(r=2.5,h=5);}}}
}
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