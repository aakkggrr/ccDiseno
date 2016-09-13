boolean grabar = false;
int contador = 0;

int angulo = 10;
int radio = 80;
int frecuencia, frecuenciaY, ciclos = 3;
int contenido=0;

void setup() {
  size(1800, 1000, P3D);
  // fullScreen(P3D);
  // fullScreen(1, P3D);
  background(100,160,200);
  //colorMode (HSB,360);
}

void draw() {
  background(141,11,86);
  puntos3D();
  //Caras ();
  //puntosylineas();

  if (grabar) {
    saveFrame("####.png");
  }
}

void puntos3D () {
  // posCamX, Y, Z, posObjx, y, z, ORIENTACION x,y,z
  camera(0, -100, 200, 0, 0, 0, 0, 1, 0);
  strokeWeight(.5);
  sphere(30);
  frecuencia = frameCount;
  frecuenciaY = frameCount*3;

  switch (contenido) {
  case 0:
    pushStyle ();
    //strokeWeight (1);
    puntosylineas();

    popStyle();
    break;

  case 1:
    pushStyle ();
    //noStroke();
    Caras();
    popStyle();
    break;
  }
}