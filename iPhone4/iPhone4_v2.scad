// iPhone edge profile dimensions

module profile() {

polygon(points = [
[0,0],[8.17,0],[8.17,1.59],[8.77,1.59],

[8.77,7.76],[8.17,7.76],[8.17,9.34],[0,9.34]],
paths = [[0,1,2,3,4,5,6,7]]);

}

module side(l) {
	translate([0,l/2,0]) {
		rotate(90,[1,0,0]) {
			linear_extrude(height = l, center = true, convexity = 10, twist = 0) 		
			{
			profile();
			}
		}
	}
}


module corner() {
	rotate_extrude(convexity = 10, $fn = 100) {
		translate([0,0,0]) {
			profile();
		}
	}
}


// iPhone Dimension Constants

len = 115.15;
wid = 58.55;
radii = 8.77;


/* iPhone Part Functions */

module sBody() {

//left side



translate([radii,len-radii,0]) {
	rotate(180) {
		side(len-(2*radii));
	}
}



//right side

translate([wid-radii,radii,0]) {
	rotate(0,[0,0,1]) {
		side(len-(2*radii)); 
	}
}

//top side

translate([wid-radii,115.15-radii,0]) {
	rotate(90,[0,0,1]) {
		side(wid-(2*radii)); 
	}
}

//bottom side

translate([radii,radii,0]) {
	rotate(270,[0,0,1]) {
		side(wid-(2*radii)); 
	}
}

}

module corners() {

//bottom left corner

translate([radii,radii,0]) {
	rotate(0,[0,0,0]) {
		corner();
	}
}

//bottom right corner

translate([wid-radii,radii,0]) {
	rotate(0,[0,0,0]) {
		corner();
	}
}

//top left corner

translate([radii,len-radii,0]) {
	rotate(0,[0,0,0]) {
		corner();
	}
}

//top right corner

translate([wid-radii,len-radii,0]) {
	rotate(0,[0,0,0]) {
		corner();
	}
}

 

}


/* Make the iPhone */

//phone body

color([0.2,0.2,0.2]) {

corners();
sBody();
translate([radii,radii,0]) {
	cube([58.55-(2*radii),115.15-(2*radii),9.34]); //fill the middle
}
}

//screen

color([0.25,0.25,0.25]) {
	translate([4.31,20.14,0]) {
		cube([49.92,74.88,9.5]);
	}
}

//home button

color([0.18,0.18,0.18]) {
	translate([29.27,10.36,9]) {
		cylinder(r=11.2/2,h=1, center=true);
	}
}

//microphone

color([0.18,0.18,0.18]) {
	translate([29.27,104.8,9]) {
		cube([11.20,2.70,1],center=true);
	}
}