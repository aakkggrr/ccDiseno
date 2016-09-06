boolean grabar = false;
int contador = 0;

void setup() {
  size(840, 1000, P3D);
  pixelDensity(2);
  // fullScreen(P3D);
  // fullScreen(1, P3D);
  background(200);
  //colorMode(HSB, 360);
}
int angulo = 15;
int radio = 70;
int frecuencia, frecuenciaY, ciclos = 2;

void draw() {
  background(200);
  // posCamX, Y, Z, posObjx, y, z, ORIENTACION x,y,z
  camera(0, -100, 200, 0, 0, 0, 0, 1, 0);
  strokeWeight(1);
  box(30);
  frecuencia = frameCount;
  frecuenciaY = frameCount*3;

  for (int i=0;i<360;i+=angulo) {
    //    point(sin(radians(i+frameCount))*radio, sin(radians(i*45+frameCount))*30, cos(radians(i+frameCount))*radio);
    strokeWeight(10);
    //    point(sin(radians(i))*radio, sin(radians(i*2))*30, cos(radians(i))*radio);
    //    point(sin(radians(i+frameCount))*radio, sin(radians(i*45+frameCount))*30, cos(radians(i+frameCount))*radio);
    point(
    sin(radians(i+frecuencia))*radio, 
    sin(radians((i+frecuenciaY)*ciclos))*30, 
    cos(radians(i+frecuencia))*radio
      );

    strokeWeight(2);
    line(
    sin(radians(i+frecuencia))*radio, 
    sin(radians((i+frecuenciaY)*ciclos))*30, 
    cos(radians(i+frecuencia))*radio, 
    sin(radians(i+angulo+frecuencia))*radio, 
    sin(radians((i+frecuenciaY+angulo)*ciclos))*30, 
    cos(radians(i+angulo+frecuencia))*radio    
      );
  }
  beginShape(QUAD_STRIP);
  for (int i=0;i<=360;i+=angulo) {
    //fill(i, 360, 360);
    if(i<180)
      fill(map(i, 0, 180, 0, 255));
    else
      fill(map(i, 180, 360, 255, 0));
    vertex(
    sin(radians(i+frecuencia))*radio, 
    sin(radians((i+frecuenciaY)*ciclos))*30, 
    cos(radians(i+frecuencia))*radio   
      );
    vertex(
    sin(radians(i+frecuencia))*radio*0.7, 
    sin(radians((i+frecuenciaY)*ciclos))*30, 
    cos(radians(i+frecuencia))*radio*0.7   
      );
    endShape(CLOSE);
  }

  if (grabar) {
    saveFrame("####.png");
  }
}
void keyPressed() {
  if (key==' ') {
    grabar = false;
  }
}