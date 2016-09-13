boolean grabar = false;
int contador = 0;

void setup() {
  size(840, 1000, P3D);
  // fullScreen(P3D);
  // fullScreen(1, P3D);
  background(200);
}
int angulo = 15;
int radio = 70;
int frecuencia, frecuenciaY, ciclos = 2;

void draw() {
  background(200);
  puntos3D();
  //colorMode(HSB,360);

  if (grabar) {
    saveFrame("####.png");
  }
}
void keyPressed() {
  if (key==' ') {
    grabar = false;
  }
}


void puntos3D() {
  // posCamX, Y, Z, posObjx, y, z, ORIENTACION x,y,z
  camera(0, -100, 200, 0, 0, 0, 0, 1, 0);
  strokeWeight(1);
  box(30);
  frecuencia = frameCount;
  frecuenciaY = frameCount*3;

  switch(contenido) {
  case 0:
    pushStyle();
    strokeWeight(1);
    puntosLineas();
    popStyle();
    break;

  case 1:
  pushStyle();
  noStroke();
  caras();
  popStyle();
  break;

  }
}