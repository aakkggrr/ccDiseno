/*
 
 */
import nervoussystem.obj.*;
boolean record = false;

float rotX, rotY;
float radioCam = 800;
int posCamY = -250;

int semilla = 1000;

int numSecciones = 12;
int numPisos = 3;
int altPiso = 200;

PVector[][] nodos;

int radio = 200;

void setup() {
  size(800, 1000, P3D);

  nodos = new PVector[numPisos][numSecciones];

  for (int j=0; j<numPisos; j++) {
    for (int i=0; i<numSecciones; i++) {
      float angulo = i*TWO_PI/numSecciones;//+random(QUARTER_PI);
      nodos[j][i] = new PVector(cos(angulo)*radio, j*altPiso, sin(angulo)*radio);
    }
  }
}

void draw() {
  background(200);
  //randomSeed(semilla);
  camera(sin(radians(-rotX*30))*radioCam, sin(radians(rotY*30))*radioCam+posCamY, cos(radians(-rotX*30))*radioCam, 0, posCamY, 0, 0, 1, 0);
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "superficieProcessing.obj");
  }
  strokeWeight(2);

  //noFill();
  fill(255, 125);

  ////////// TAPA INFERIOR  
  beginShape();
  for (int i=0; i<numSecciones; i++) {
    vertex(nodos[numPisos-1][i].x, nodos[numPisos-1][i].y, nodos[numPisos-1][i].z);
  }
  endShape();

  ////////// CARAS
  for (int j=0; j<numPisos-1; j++) {
    beginShape(TRIANGLE_STRIP);
    for (int i=0; i<numSecciones; i++) {
      vertex(nodos[j][i].x, nodos[j][i].y, nodos[j][i].z);
      vertex(nodos[j+1][i].x, nodos[j+1][i].y, nodos[j+1][i].z);
    }
    vertex(nodos[j][0].x, nodos[j][0].y, nodos[j][0].z);
    vertex(nodos[j+1][0].x, nodos[j+1][0].y, nodos[j+1][0].z);

    endShape();
  }




  if (record) {
    endRecord();
    record = false;
  }
}

void calculaNodos() {
  for (int j=0; j<numPisos; j++) {
    for (int i=0; i<numSecciones; i++) {
      float angulo = i*TWO_PI/numSecciones+random(QUARTER_PI);
      nodos[j][i] = new PVector(cos(angulo)*radio, j*altPiso, sin(angulo)*radio);
    }
  }
}

