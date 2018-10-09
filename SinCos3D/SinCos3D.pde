/*
  Sin Cos 3D
 */
import peasy.PeasyCam;

PeasyCam cam;
int amplitud = 350;
int frecuencia = 18;
int nCubos = 1;
int radio = 20;

void setup() {
  size(800, 800, P3D);
  colorMode(HSB, 360, 100, 100);
  cam = new PeasyCam(this, 800);
  frecuencia = 18*2;
}

void draw() {
  background(0);
  for (int i=0; i<nCubos; i++) {
    fill(i*frecuencia, 100, 100);

    pushMatrix();
    translate(i*125, sin(radians(frameCount+i*frecuencia))*amplitud );
    box(100);
    popMatrix();
  }
  if (frameCount % 30 == 0) {
    nCubos++;
  }
  if (nCubos>20)
    nCubos=1;
  //////////////////////////////////
  fill(120, 0, 255);
  for (int i=0; i<200; i++) {
    pushMatrix();
    translate(cos(radians(i)*frecuencia)*(radio+i*25), sin(radians(i)*frecuencia)*(radio+i*25));
    box(100);
    popMatrix();
  }
  if (keyPressed)
    saveFrame("####_captura.png");
}
