/*
 FUNCIONES - CLASES
 */

Particula[] p;
int nPart = 100;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100);
  background(0);
  p = new Particula[nPart];

  for (int i=0; i<nPart; i++) {
    p[i] = new Particula();
  }
}

void draw() {
  background(0);
  for (int i=0; i<nPart; i++) {
    p[i].draw();
    p[i].update();
  }

  circ(200, 200);
  circ(100, 250);
  circ(20, 500);
  circ(200, 700);
  circ(400, 400);
}

// FUNCION
void circ(int x, int y) {
  stroke(255);
  strokeWeight(random(5, 20));
  point(x, y);
}
