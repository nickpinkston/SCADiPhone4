module profile() {

polygon(points = [
[0,0],[8.17,0],[8.17,1.59],[8.77,1.59],

[8.77,7.76],[8.17,7.76],[8.17,9.34],[0,9.34]],
paths = [[0,1,2,3,4,5,6,7]]);

}

module case_profile() {

polygon(points = [
[0,0],[bezelWid,0],[bezelWid,bezelThick],[radii,bezelThick],[radii-bandThick,+1.59],[,],
[0,0],[,],[,],[,],[,],[,]],


paths = [[0,1,2,3,4,5,6,7,8,9,10,11]]);

}


// ~ ~ ~ ~ iPhone Profile Variables ~ ~ ~ ~ ~

bandWid = 6.16; //width of antenna band
bandThick = 0.60; //thickness of antenna band beyond main body
bandOff = 1.59; //offset from antenna band
radii = 8.77; //as measured from the band outer diameter



// ~ ~ ~ ~ Case Profile Variables ~ ~ ~ ~ ~ 

widSp = 0.5 //width space
sideSp = 0.5 //side space
bezelWid = 8 //global bezel width
bezelThick = 2 //global bezel thickness




profile();
//case_profile()

