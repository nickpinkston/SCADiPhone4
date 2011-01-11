/* CloudFab, 2011, BSD 2.0 Licensed.
Units in millimeters
*/

// ~ ~ ~ ~ ~ ~ ~ ~ Module Definitions ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

module profile() {

polygon(points = [
[0,10],[8,10],[8,9],[6,9],[6,8],[5,8],[5,2],[6,2],[6,1],[8,1],[8,0],[0,0]],
paths = [[0,1,2,3,4,5,6,7,8,9,10,11]]);

}

module invProfile() {
	difference() {	
		square(10);
		profile();
	}
}

module mirProfile() {
	rotate(180,[0,0,1]) {
		translate([-8,-10,0]) {
			profile();
		}
	}
}

module side(h) {

	linear_extrude(height = h, center = true, convexity = 10, twist = 0) {
	profile();
	}
}

module corner(rad) { 
	intersection() {
			translate([0,0,0]) {
				cube([10+rad,10+rad,10+rad]);
			}
			rotate_extrude(convexity = 10, $fn = 100) {
				translate([rad,0,0]) {
					mirProfile();
				}
			}
	}
}