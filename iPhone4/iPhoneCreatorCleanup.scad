// ---------Definitions----------

module mainBo() {  //Main Body

difference() {

	translate([-7.5,-10,0]) {
	cube([75,140,14], center=false); //case
	}

	union() {
		cube([60,120,14], center=false); 
		eyeletIn(); 
	} 

}}


module eyeletEx() {  //Eyelet, External

translate([67.5,130,7]) {
rotate_extrude(convexity = 10, $fn=10)
	translate([5,0,0])
		circle(r=2, $fn=10); 

}}


module eyeletIn() { //Eyelet, Internal

translate([-7.5,130,7]) {
rotate_extrude(convexity = 10, $fn=10)
	translate([5,0,0]) 
		circle(r=2, $fn=10); 

}}


module cardGr() {   //CardGroove, ***In progress***
translate([-7.5,0,20]) {
	cube([75,20,8]);
	difference() {
		cube([75,100,8]);
		translate([7.5,0,9]) {
			rotate([270,0,0]) {
				grooveCu(110,65,60,4);
				translate([7.5,4,0]) {
					grooveCu(110,50,45,4);
				}
			}
		}
	}
}}



module grooveCu(h,widthFront,widthBack,c) { //groove cutter

//Variables, assuming origin at 0,0,0

//h = height
//widthFront = 65; width front
//widthBack = 60; width back
//c = 5; thickness

bevel = (widthBack - widthFront) / 2; //bevel cut width
x1 = bevel;
x2 = widthBack - bevel;

polyhedron(points = [[0,0,0],[x1,c,0],[x2,c,0],[widthBack,0,0],[0,0,h],[x1,c,h],[x2,c,h],[widthBack,0,h]], 

triangles = 
[[0,3,2],[0,2,1],
[7,4,6],[6,4,5],
[1,2,5],[2,6,5],
[3,0,4],[7,3,4],
[0,1,4],[1,5,4],
[2,3,6],[3,7,6]],
convexity = 10);


}



module overCo() {  //Over-Covers


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
}}



// ~ ~ ~ ~ ~ ~ ~ MASTER GENERATION CODE!!! ~ ~ ~ ~ ~~ ~ ~ 

//main body
mainBo();

//external eyelet
eyeletEx();

// card groove
cardGr();

//over-covers
overCo();




//Notes
//We need an easy way to do subtractive booleans, because it's a bitch to make these cuts via nesting. Is it having a section for add and subtract, splitting it into functions, or perhaps having an invert so you can "add" a negative. No idea...