/*
 Atractores
 1. atractor 2D ////////////////////
 2. atractor 3D /////////////
 3. Crear malla 3D ///////////////
 4. Exportar OBJ 
 5. Malla o superficie, convertir a vectores en rh+gh
 */
import processing.dxf.*;

PVector[] pt; // (X, Y, Z); puntos
int nPx = 100, nPz = 100; // numero de Puntos
int sep = 10; // Separacion entre puntos

float[] grosor;
int contador = 0;

boolean gira, guardaFrame, guardaOBJ;
float ang;

void setup() {
  size(displayWidth, displayHeight, P3D);
  background(0);

  pt = new PVector[nPx*nPz];
  grosor = new float[nPx*nPz];

  for (int j=0; j<nPz; j++) {
    for (int i=0; i<nPx; i++) {
      pt[i + j*nPx] = new PVector(i*sep, 0, j*sep);
      grosor[i + j*nPx] = 10;
    }
  }
}

void draw() {

  // camera(Cx, Cy, Cz, Ox, Oy, Oz, ox, oy, oz);
  camera(nPx*sep/2+cos(ang)*1000, -600, nPz*sep/2+sin(ang)*1000, nPx*sep/2, 0, nPz*sep/2, 0, 1, 0);
  if (gira) {
    ang+=0.01;
  }
  background(0);
  stroke(255);
  if (!guardaOBJ) {
    for (int i=0; i<pt.length; i++) {
      strokeWeight(grosor[i]);
      point(pt[i].x, pt[i].y, pt[i].z);
      // dist(x, y, X, Y);
      float d = dist(mouseX, mouseY, pt[i].x, pt[i].z);
      if (d<100) {
        grosor[i] = 20;

        if (mousePressed) {
          if (mouseButton == LEFT) {
            if (pt[i].y > -200) {
              pt[i].y -= (100-d)*.05;
            }
          } else if (mouseButton == RIGHT) {
            if (pt[i].y < 200) {
              pt[i].y += (100-d)*.05;
            }
          }
        }
      }
      if (grosor[i]>10) {
        grosor[i] *= 0.975;
      }
    }
    stroke(255, 0, 0);
    strokeWeight(1);
  }
  
  if (guardaOBJ) {
    beginRaw(DXF, "####_MiSuperModelo.dxf");
  }
  for (int j=0; j<nPz-1; j++) {
    beginShape(TRIANGLE_STRIP);
    for (int i=0; i<nPx; i++) {
      vertex(pt[i+j*nPx].x, pt[i+j*nPx].y, pt[i+j*nPx].z);
      vertex(pt[i+(j+1)*nPx].x, pt[i+(j+1)*nPx].y, pt[i+(j+1)*nPx].z);
    }
    endShape();
  }
  if (guardaOBJ) {
    endRaw();
    guardaOBJ = false;
  }

  if (guardaFrame) {
    saveFrame(contador+"_jhgdgfds.png");
    contador++;
    guardaFrame = false;
  }
}
