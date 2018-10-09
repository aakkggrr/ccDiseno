import peasy.*;
PeasyCam cam;

PShape miModelo;
int nObjetos;

PShape[] modelitos;

void setup() {
  size(1000, 1000, P3D);
  cam = new PeasyCam(this, 400);
  miModelo = loadShape("modelo.obj");
  miModelo.disableStyle();

  nObjetos = miModelo.getChildCount();

  modelitos = new PShape[int(nObjetos/3)];

  for (int i=0; i<modelitos.length; i++) {
    int pieza = int(random(nObjetos));
    modelitos[i] = miModelo.getChild(pieza);
  }
  //println(miModelo.getVertexCount());
}

void draw() {
  //noCursor();
  background(255);

  lights();
  ambientLight(120, 120, 120); // r, g, b
  pointLight(0, 0, 200, 200, mouseY, -200); // r, g, b, x, y, z
  fill(120);

  //shape(miModelo);
  for (int i=0; i<modelitos.length; i++) {
    shape(modelitos[i]);
  }
}
