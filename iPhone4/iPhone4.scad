//Body, yes I know I'm repeating too much, but it's faster at first!

union(){ //Mesh of everything!

union(){

//main body, with corner notching
difference(){
		union(){
			translate([0,0,1.585]){
				cube(size = [58.55,115.15,9.34-(2*1.585)], center = false);
			} 
			translate([0.60,0.60,0]) {
			cube(size = [58.55-(2*0.6),115.15-(2*0.6),9.34], center = false);
			}
			//main body 
		}
		union(){
			translate([0,0,0]){
			cube(size = [8.77,8.77,9.34],center=false);
			}
			translate([49.78,0,0]){
			cube(size = [8.77,8.77,9.34],center=false);
			}
			translate([0,115.15-8.77,0]){
			cube(size = [8.77,8.77,9.34],center=false);
			}
			translate([49.78,115.15-8.77,0]){
			cube(size = [8.77,8.77,9.34],center=false);
			}
		}
}

//round the corners
translate([8.77,8.77,4.67]){
	cylinder(h=9.34-(2*1.585), r=8.77, center = true,$fn=100);
	cylinder(h=9.34, r=8.77-0.6, center = true,$fn=100);
}

translate([49.78,8.77,4.67]){
	cylinder(h=9.34-(2*1.585), r=8.77, center = true,$fn=100);
	cylinder(h=9.34, r=8.77-0.6, center = true,$fn=100);
}

translate([8.77,115.15-8.77,4.67]){
	cylinder(h=9.34-(2*1.585), r=8.77, center = true,$fn=100);
	cylinder(h=9.34, r=8.77-0.6, center = true,$fn=100);
}

translate([49.87,115.15-8.77,4.67]){
	cylinder(h=9.34-(2*1.585), r=8.77, center = true,$fn=100);
	cylinder(h=9.34, r=8.77-0.6, center = true,$fn=100);
}


} //end body union

//Features

// Front Features

//Screen

translate([4.31,20.13,-1]){cube(size = [49.92,74.88,1], center = false); }

// Home Button

translate([29.27,104.79,0]){cylinder (h = 2, r=11.20/2, center = true, $fn=100);}

//Receiver

translate([29.27,10.35,0]){
	cube(size = [11.2-2.70,2.70,0.6], center=true);
	translate([11.2/2-(2.70/2),0,0]) {
		cylinder(h=0.6,r=2.70/2,center=true, $fn=100);
	}
	translate([11.2/-2+(2.70/2),0,0]) {
		cylinder(h=0.6,r=2.70/2,center=true, $fn=100);
	}  
}

// Front Camera

translate([19.27,10.35,0]){
	cylinder(h=0.6,r=4.8/2,center=true, $fn=100);
}

// Light Sensor

translate([29.27,5.25,0]){
	cube(size = [5.86-1.2,1.20,0.6], center=true);
	translate([5.86/2 -(1.20/2),0,0]) {
		cylinder(h=0.6,r=1.20/2,center=true, $fn=100);
	}
	translate([5.86/-2+(1.20/2),0,0]) {
		cylinder(h=0.6,r=1.20/2,center=true, $fn=100);
	}  
}


// Back Features

// Main Camera

translate([58.55-8.77,8.77,9.36+0.6]){
	cylinder(h=0.6,r=6.92/2,center=true, $fn=100);
}


// Flash
translate([58.55-14.93,8.77,9.36+0.6]){
	cylinder(h=0.6,r=2.91/2,center=true, $fn=100);
}



// Top Features

//Sleep/Awake Button

translate([58.55-((19.54+9.44)/2),-0.3,9.3400/2]) { 
	rotate([90,0,0]) {
	cube(size = [10.1-3.0,3.0,0.6], center=true);
	translate([10.1/2-(3.0/2),0,0]) {
		cylinder(h=0.6,r=3.0/2,center=true, $fn=100);
		}
	translate([-10.1/2+(3.0/2),0,0]) {
		cylinder(h=0.6,r=3.0/2,center=true, $fn=100);
		}  
	}
}

//Mic Jack

translate([58.55-46.51,-0.3,9.3400/2]) { 
	rotate([90,0,0]) {
		difference(){
			cylinder(h=0.6,r=5.0/2,center=true, $fn=100);	
			cylinder(h=0.7,r=2.0,center=true, $fn=100);	
		}
	}
}

//Mic 2

translate([58.55-41.82,-0.3,9.3400/2]) { 
	rotate([90,0,0]) {
		difference(){
			cylinder(h=0.6,r=0.9/2,center=true, $fn=100);	
			cylinder(h=0.7,r=0.5/2,center=true, $fn=100);	
		}
	}
}

// Left Side Features

translate([-0.3,24.63,4.67]){
	rotate([0,90,0]){
		cylinder(h=0.6,r=4.8/2,center=true,$fn=100);	
		translate([0,34.92-24.63,0]) {
			cylinder(h=0.6,r=4.8/2,center=true,$fn=100);	
		}
		translate([0,-10.17,0]) {
		cube(size = [3,5.96,0.6], center = true);
		}
	}
	
}

// Right Features: (none) There aren't any to avoid, the SIM is there, but you can just take the case off...

//Bottom Features

//Mic 1, left side

translate([58.55-((51.26+44.28)/2),115.15+0.3,9.3400/2]) { 
	rotate([90,0,0]) {
	cube(size = [(51.26-44.28)-(5.81-3.52),(5.81-3.52),0.6], center=true);
	translate([(51.26-44.28)/2-((5.81-3.52)/2),0,0]) {
		cylinder(h=0.6,r=(5.81-3.52)/2,center=true, $fn=100);
		}
	translate([(51.26-44.28)/-2+((5.81-3.52)/2),0,0]) {
		cylinder(h=0.6,r=(5.81-3.52)/2,center=true, $fn=100);
		}  
	}
}

//Connector


translate([58.55-((40.28+18.27)/2),115.15+0.3,9.3400/2]) { 
	rotate([90,0,0]) {
	cube(size = [(40.28-18.27)-(5.81-3.52),(5.81-3.52),0.6], center=true);
	}
}

//Speaker, right side 

translate([58.55-((14.27+7.29)/2),115.15+0.3,9.3400/2]) { 
	rotate([90,0,0]) {
	cube(size = [(51.26-44.28)-(5.81-3.52),(5.81-3.52),0.6], center=true);
	translate([(51.26-44.28)/2-((5.81-3.52)/2),0,0]) {
		cylinder(h=0.6,r=(5.81-3.52)/2,center=true, $fn=100);
		}
	translate([(51.26-44.28)/-2+((5.81-3.52)/2),0,0]) {
		cylinder(h=0.6,r=(5.81-3.52)/2,center=true, $fn=100);
		}  
	}
}
 
} //Union of everything for mesh clean up
