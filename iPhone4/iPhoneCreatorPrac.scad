//Chassis

difference() {

	translate([-7.5,-10,0]) {
	cube([75,140,14], center=false); //case
	}

union() {
cube([60,120,14], center=false); //phone

//Eyelet, Internal

translate([-7.5,130,7]) {
rotate_extrude(convexity = 10, $fn=10)
	translate([5,0,0])
		circle(r=2, $fn=10); 

}} //end eyelet

}

//Over-Covers


translate([-7.5,100,0]) { //top
cube([75,20,3]);
}

translate([-5,0,0]) { //bottom
	difference() {
		cube([65,20,3]);
	
		translate([35,7,2]) {
			cylinder(h=5, r=7,center=true, $fn=10);
		}
	

	}

}

//Eyelet, External

translate([67.5,130,7]) {
rotate_extrude(convexity = 10, $fn=10)
	translate([5,0,0])
		circle(r=2, $fn=10); 

}


//CardGroove

translate([-7.5,0,30]) {
	difference() {
		cube([75,100,10]);
		translate([7.5,0,0]) {
			cube([60,100,10]);
		}
	}
}

translate([-7.5,0,50]) {

polyhedron(points = [ 
[0,0,0],[0,0,20],[20,0,0],[0,20,0] ], 

triangles = [
[1,2,4],[1,3,4],[3,1,2],[4,3,2]],

convexity = 10);

}



//Notes
//We need an easy way to do subtractive booleans, because it's a bitch to make these cuts via nesting. Is it having a section for add and subtract, splitting it into functions, or perhaps having an invert so you can "add" a negative. No idea...