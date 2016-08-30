var numS; 
var semilla;
var estilo;
var ancho, alto, pX, pY;

function setup(){
  createCanvas(windowWidth,windowHeight);
  background(0);
	semilla = random(1000);
	numS = 20;
	ancho = width/numS;
	alto = height/numS;
	estilo = 0;
}
function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  ancho = width/numS;
  alto = height/numS;
}
function draw(){
	background(200);
	stroke(0);
	randomSeed(semilla);
  	estilos();
  }

function estilos() {
  switch(estilo) {
  case 0:
    stroke(0);
    noFill();
    strokeWeight(5);
    for (var j=0;j<numS;j++) {
      for (var i=0;i<numS;i++) {
        var pX = ancho*j;
        var pY = alto*i;
        var patron = int(random(2));
        if (patron == 0) {
          strokeWeight(map(touchX,0,width, 1,10));
          line(pX, pY, pX+ancho, pY+alto);
		} 
        if (patron == 1) {
          strokeWeight(map(touchY,0,height, 1,10));
          line(pX, pY+alto, pX+ancho, pY);
        }
      }
    }
    break;
  case 1:
    stroke(0);
    noFill();
    strokeWeight(map(touchX,0,width, 1,10));
    for (var j=0;j<numS;j++) {
      for (var i=0;i<numS;i++) {
        var pX = ancho*j;
        var pY = alto*i;
        var patron = int(random(2));
        if (patron == 0) {
          arc(pX, pY, ancho, alto, 0, HALF_PI );
          arc(pX+ancho, pY+alto, ancho, alto, PI, HALF_PI+PI);
        } 
        if (patron == 1) {
          arc(pX+ancho, pY, ancho, alto, HALF_PI, PI);
          arc(pX, pY+alto, ancho, alto, HALF_PI+PI, TWO_PI);
        }
      }
    }
    break;
  case 2:
    fill(0);
    noStroke();
    for (var j=0;j<numS;j++) {
      for (var i=0;i<numS;i++) {
        var pX = ancho*j;
        var pY = alto*i;
        var patron = int(random(4));
        if (patron == 0) {
          beginShape();
          vertex(pX+ancho, pY);
          vertex(pX+ancho, pY+alto);
          vertex(pX, pY+alto);
          endShape(CLOSE);
        } 
        if (patron == 1) {
          beginShape();
          vertex(pX, pY);
          vertex(pX+ancho, pY);
          vertex(pX+ancho, pY+alto);
          endShape(CLOSE);
        }
        if (patron == 2) {
          beginShape();
          vertex(pX, pY);
          vertex(pX+ancho, pY);
          vertex(pX, pY+alto);
          endShape(CLOSE);
        }
        if (patron == 3) {
          beginShape();
          vertex(pX, pY);
          vertex(pX+ancho, pY+alto);
          vertex(pX+ancho, pY);
          endShape(CLOSE);
        }
      }
    }
    break;
  case 3:
    noFill();
    stroke(0);
    strokeWeight(touchX/80);
    for (var j=0;j<numS;j++) {
      for (var i=0;i<numS;i++) {
        var pX = ancho*j;
        var pY = alto*i;
        var patron = int(random(4));
        if (patron == 0) {
          bezier(pX+ancho/3, pY, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto/3, pX, pY+alto/3);
          bezier(pX+ancho/3*2, pY, pX+ancho/3*2, pY+alto/3*2, pX+ancho/3*2, pY+alto/3*2, pX+ancho, pY+alto/3*2);
          bezier(pX, pY+alto/3*2, pX+ancho/3*2, pY+alto/3*2, pX+ancho/3*2, pY+alto/3*2, pX+ancho/3*2, pY+alto);
          bezier(pX+ancho, pY+alto/3, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto);
        } 
        if (patron == 1) {
          bezier(pX+ancho, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY+alto/3*2, pX+ancho, pY+alto/3*2);
          bezier(pX+ancho/3*2, pY, pX+ancho/3*2, pY+alto/3*2, pX+ancho/3*2, pY+alto/3*2, pX, pY+alto/3*2);
          bezier(pX+ancho/3, pY, pX+ancho/3, pY+alto/3, pX+ancho/3*2, pY, pX+ancho/3*2, pY+alto);
          bezier(pX, pY+alto/3, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto);
        }
        if (patron == 2) {
          bezier(pX+ancho/3, pY, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto/3, pX+ancho/3, pY+alto);
          bezier(pX, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY);
          bezier(pX, pY+alto/3*2, pX+ancho/3*2, pY+alto/3*2, pX+ancho/3*2, pY+alto/3, pX+ancho, pY+alto/3);
          bezier(pX+ancho/3*2, pY+alto, pX+ancho/3*2, pY+alto/3*2, pX+ancho/3*2, pY+alto/3*2, pX+ancho, pY+alto/3*2);
        }
        if (patron == 3) {
          bezier(pX+ancho/3, pY, pX+ancho/3, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY);
          bezier(pX, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3, pY+alto/3*2, pX+ancho, pY+alto/3*2);
          bezier(pX, pY+alto/3*2, pX+ancho/3, pY+alto/3*2, pX+ancho/3, pY+alto/3*2, pX+ancho/3, pY+alto);
          bezier(pX+ancho, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY+alto);
          // stroke(255, 0, 0);
          // line(pX+ancho/3, pY, pX+ancho/3, pY+alto/3);
          // stroke(0, 0, 255);
          // line(pX+ancho/3*2, pY+alto/3, pX+ancho/3*2, pY);
          // stroke(0);
          // bezier(pX, pY+alto/3*2, pX+ancho/3, pY+alto/3*2, pX+ancho/3, pY+alto/3*2, pX+ancho/3, pY+alto);
        }
      }
    }
    break;
  }
}

function keyPressed() {
  if (key==' ') {
    semilla = int(random(1000));
  }
  if (key=='1') {
    strokeCap(ROUND);
  }
  if (key=='2') {
    strokeCap(SQUARE);
  }
  if (key=='3') {
    strokeCap(PROJECT);
  }
  println(estilo);
  switch(keyCode) {
	case UP_ARROW:
	  estilo++;
	  estilo=estilo%4;
	  break;
	case DOWN_ARROW:
	  estilo--;
	  if (estilo<0)
	    estilo=3;
	  break;
  }
}
