/*
 Atractores
 1. atractor 2D ////////////////////
 2. atractor 3D
 3. Crear malla 3D
 4. Exportar OBJ
 5. Malla o superficie, convertir a vectores en rh+gh
 */

PVector[] pt; // (X, Y, Z); puntos
int nPx = 13, nPy = 10; // numero de Puntos
int sep = 100; // Separacion entre puntos

float[] grosor;

void setup() {
  size(displayWidth, displayHeight);
  background(0);

  pt = new PVector[nPx*nPy];
  grosor = new float[nPx*nPy];

  for (int j=0; j<nPy; j++) {
    for (int i=0; i<nPx; i++) {
      pt[i + j*nPx] = new PVector(i*sep, j*sep);
      grosor[i + j*nPx] = 10;
    }
  }
}

void draw() {
  background(0);
  stroke(255);

  for (int i=0; i<pt.length; i++) {
    strokeWeight(grosor[i]);
    point(pt[i].x, pt[i].y);
    // dist(x, y, X, Y);
    if (dist(mouseX, mouseY, pt[i].x, pt[i].y)<100) {
      grosor[i] = 100;
    }
    if (grosor[i]>10) {
      grosor[i] *= 0.975;
    }
  }

  noFill();
  stroke(255, 0, 0);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 200, 200);
}
