var pX, pY, velX, velY;
var diam; 

function setup(){
	createCanvas(300,300);
	background(0);
	pX = width/2;
	pY = height/2;
	diam = 20;
	velX = random(-2,2);
	velY = random(-2,2);
}

function draw(){
	background(200);
	stroke(0);
	strokeWeight(1);
	fill(255,0,0);
	ellipse(pX, pY,diam,diam);
	pX+=velX;
	pY+=velY;
	posicion();
}

function posicion(){
	if(pX>width-diam/2||pX<0+diam/2){
		velX*= -1;
	}
	if(pY>height-diam/2||pY<0+diam/2){
		velY*= -1;
	}
}