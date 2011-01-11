module profile() {

polygon(points = [

[-3,-2.2], //part of total case width

[4,-2.2],[4,-0.2], //bottom lip

[0.4,-0.2],[0.4,1.45], //case bottom notch length

[-0.3,1.45],[-0.3,7.9], //notch depth

[0.4,7.9],[0.4,10.5], //case top notch length

[-0.3,10.5],[-0.3,12.2], //ID notch depth

[0.4,12.2],[0.4,14.4], //ID lip length

[-3,14.4] //other part of total case width

],
paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13]]);

}

module card() {
	cube([53.98,85.60,0.76],center=false);
}

module cardCorn() {
	translate([3.18,3.18,0]) {
		cylinder(r=3.18,h=0.76, $fn = 100);
	}
	translate([53.98-3.18,3.18,0]) {
		cylinder(r=3.18,h=0.76, $fn = 100);
	}
	translate([3.18,85.60-3.18,0]) {
		cylinder(r=3.18,h=0.76, $fn = 100);
	}
	translate([53.98-3.18,85.60-3.18,0]) {
		cylinder(r=3.18,h=0.76, $fn = 100);
	}
}

module cardClip() {
	translate([0,0,0]) {
		cube([3.18,3.18,0.76]);
	}
	translate([53.98-3.18,0,0]) {
		cube([3.18,3.18,0.76]);
	}
	translate([0,85.60-3.18,0]) {
		cube([3.18,3.181,0.76]);
	}
	translate([53.98-3.18,85.60-3.18,0]) {
		cube([3.18,3.181,0.76]);
	}
}

// ~ ~ ~ ~ ~ ~ iPhone Constants ~ ~ ~ ~ ~  

antRaise = 0.60; //amount antenna raises from main body
antWidth = 1.59; //antenna width 
radii = 8.77; //corner radius for all four corners

// ~ ~ ~ ~ ~ ~ Case Variables ~ ~ ~ ~ ~  



// ~ ~ ~ ~ ~ ~ Case Tolerances ~ ~ ~ ~ 

widthTol = 0.5; //total slop for case width fitment

thickTol = 1; //total slop for case thickness fitment


// ~ ~ ~ ~ ~ ~ Make Case

//profile();

difference() {
card();
cardClip();
}
cardCorn();

