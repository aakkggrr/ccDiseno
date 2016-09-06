// modelado 3d por coordenadas
boolean ddd = false;

void setup() {
  size(600, 800, P3D);
  rectMode(CENTER);
}

void draw() {
  background(200);

  if (ddd) { // PERSPECTIVA AREA
    camera(200, -200, 200, 0, 0, 0, 0, 1, 0);
  } 
  else { // FRONTAL // PERSPECTIVA CONICA CENTRAL
    camera(0, 0, 500, 0, 0, 0, 0, 1, 0);
  }

  pushMatrix();
  rotateX(HALF_PI);
  fill(255);
  box(20);
  rect(0, 0, 200, 200);
  popMatrix();

  pushStyle();
  strokeWeight(2);

  cara(100);
  cara(-100);

  beginShape(QUAD_STRIP);
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
  for (int i=270;i<=360;i+=10) {
    vertex(cos(radians(i))*100, sin(radians(i))*100, 100);
    vertex(cos(radians(i))*100, sin(radians(i))*100, -100);
  }
  endShape();

  popStyle();
}

void cara(int posZ) {
  beginShape();
  vertex(100, 0, posZ);
  vertex(100, 100, posZ);
  vertex(-100, 100, posZ);
  vertex(-100, -100, posZ);
  vertex(0, -100, posZ);
  for (int i=270;i<=360;i+=10) {
    vertex(cos(radians(i))*100, sin(radians(i))*100, posZ);
  }
  endShape();
}


void keyPressed() {
  if (key==' ')
    ddd=!ddd;
}


/*
  fill(0);
 for (int i=180;i>=90;i-=30) {
 text(i, cos(radians(i))*100, sin(radians(i))*100, 0);
 }
 pushMatrix();
 rotate(radians(map(mouseX, 0, width, 0, 360)));
 line(0, 0, 100, 0);
 popMatrix();
 */
