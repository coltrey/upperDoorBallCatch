$fn=50;
cylinderDiameter = 21.7;
cylinderHeight = 30;
capDiameter = cylinderDiameter + 3;
capLoc = cylinderHeight;
capHeight = 1.5;
sphereLoc = capLoc;
sphereDiameter = 14.5;

module doorPlug() {
    union() {
        cylinder(d=cylinderDiameter, cylinderHeight);

        translate([0,0,capLoc])
        cylinder(d=capDiameter, capHeight);

        translate([0,0,sphereLoc])
        sphere(d=sphereDiameter);
    }
}

doorPlug();