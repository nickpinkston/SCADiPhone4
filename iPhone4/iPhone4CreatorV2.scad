/* CloudFab, 2011, BSD 2.0 Licensed.
Units in millimeters
iPhone 4 measurements taken from released Apple Dev plans
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

//Global iPhone Dimensions 


width = 58; // of the iPhone
len = 115.15; // of the iPhone


// Case Variables 


sideTol = 0.5; // space at the middle of the surface metal antenna
widTol = 0.25; // space at the middle of the surface metal antenna

sides = 100;
mids = 42.38;
radii = 8.77;





//~ ~ ~ ~ ~ ~ Main ~ ~ ~ ~ ~

// ~ ~ ~ ~ ~ ~top case ~ ~ ~ ~ ~ ~

translate([-25,18,0]) { //top left
	rotate(270,[0,1,0]) {
		rotate(270,[0,0,1]) {
		side(sides/2);
		}
	}
}

translate([-25,-58,10]) { //top right
	rotate(270,[0,1,0]) {
		rotate(90,[0,0,1]) {
			side(sides/2);
		}
	}
}

translate([18,-20,0]) { // top side
	rotate(90,[1,0,0]) {
		rotate(180,[0,1,0]) {
			side(mids);
		}
	}
}

corner(radii); //top left corner

translate([0,-40,0]) { //bottom right corner
	rotate(270,[0,0,1]) {
		corner(radii);
	}
}



// ~ ~ ~ ~ ~ ~ bottom case ~ ~ ~ ~ ~ ~ ~

module caseBot() {

translate([0,0,0]) {

translate([-75,18,0]) { //bottom left
	rotate(270,[0,1,0]) {
		rotate(270,[0,0,1]) {
		side(sides/2);
		}
	}
}

translate([-75,-58,10]) { // bottom right
	rotate(270,[0,1,0]) {
		rotate(90,[0,0,1]) {
			side(sides/2);
		}
	}
}

translate([-118,-20,0]) { // bottom side
	rotate(90,[1,0,0]) {
		rotate(0,[0,0,0]) {
			side(mids);
		}
	}
}

translate([-100,0,0]) { //bottom left corner
	rotate(90,[0,0,1]) {
		corner(radii);
	}
}

translate([-100,-40,0]) { //bottom right corner
	rotate(180,[0,0,1]) {
		corner(radii);
	}
}

}}

caseBot();

