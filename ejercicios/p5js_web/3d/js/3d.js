// modelado 3d por coordenadas
var ddd = false;

function setup() {
  createCanvas(600, 800, WEBGL);
  rectMode(CENTER);
}

function draw() {
  background(200);

  if (ddd) { // PERSPECTIVA AREA
    camera(200, -200, 200);//, 0, 0, 0, 0, 1, 0);
  } 
  else { // FRONTAL // PERSPECTIVA CONICA CENTRAL
    camera(0, 0, 500);//, 0, 0, 0, 0, 1, 0);
  }

  push();
  rotateX(HALF_PI);
  fill(255);
  box(20);
  rect(0, 0, 200, 200);
  pop();

  push();
  strokeWeight(2);

  cara(100);
  cara(-100);

  beginShape(TRIANGLE_STRIP);
  vertex(100, 0, 100);
  vertex(100, 0, -100);
  vertex(100, 100, 100);
  vertex(100, 100, -100);
  vertex(-100, 100, 100);
  vertex(-100, 100, -100);
  vertex(-100, -100, 100);
  vertex(-100, -100, -100);
  vertex(0, -100, 100);
  vertex(0, -100, -100);
  for (var i=270;i<=360;i+=10) {
    vertex(cos(radians(i))*100, sin(radians(i))*100, 100);
    vertex(cos(radians(i))*100, sin(radians(i))*100, -100);
  }
  endShape();

  pop();
}

function cara(posZ) {
  beginShape();
  vertex(100, 0, posZ);
  vertex(100, 100, posZ);
  vertex(-100, 100, posZ);
  vertex(-100, -100, posZ);
  vertex(0, -100, posZ);
  for (var i=270;i<=360;i+=10) {
    vertex(cos(radians(i))*100, sin(radians(i))*100, posZ);
  }
  endShape(CLOSE);
}


function keyPressed() {
  if (key==' ')
    ddd=!ddd;
}