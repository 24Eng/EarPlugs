// What would it sound like to have a one-way Tesla valve installed in an earplug?

majorDiameter = 6;
minorDiameter = 5;
deepStaffLength = 1.25;
gapLength = 2;
exitStaffLength = 10;



majorRadius = majorDiameter/2;
minorRadius = minorDiameter/2;

$fn = 60;

translate([0,0,0]){
    rotate([0,0,0]){
        earBudMount();
    }
}


/*
/([•])\ /([•])\ /([•])\ /([•])\ /([•])\ /([•])\ /([•])\ /([•])\
\([•])/ \([•])/ \([•])/ \([•])/ \([•])/ \([•])/ \([•])/ \([•])/
*/


module earBudMount(){
    
        translate([0,0,gapLength + exitStaffLength]){
            rotate([0,0,0]){
                cylinder(deepStaffLength, majorRadius, majorRadius, center=false);
            }
        }
        translate([0,0,deepStaffLength*0 + gapLength*0 + exitStaffLength*1]){
            rotate([0,0,0]){
                cylinder(gapLength, minorRadius, minorRadius, center=false);
            }
        }
        translate([0,0,deepStaffLength*0 + gapLength*0 + exitStaffLength*0]){
            rotate([0,0,0]){
                cylinder(exitStaffLength, majorRadius, majorRadius, center=false);
            }
        }
}