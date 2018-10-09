import peasy.*;
PeasyCam cam;

PVector A, B, C, D, E, F, G, H;
int nInc = 1;
void setup() {
  size(displayWidth, displayHeight, P3D);

  cam = new PeasyCam(this, 800);

  A = new PVector(0, 400, 0);
  B = new PVector(400, 400, 0);
  C = new PVector(400, 300, 0);
  D = new PVector(300, 200, 0);
  E = new PVector(200, 200, 0);
  F = new PVector(200, 0, 0);
  G = new PVector(100, 0, 0);
  H = new PVector(0, 100, 0);
}

void draw() {
  background(120);
  lights();
  strokeWeight(.5);
  stroke(0,100);
  //noStroke();
  beginShape();
  vertex(A.x, A.y, A.z);
  vertex(B.x, B.y, B.z);
  vertex(C.x, C.y, C.z);
  for (int i=360; i>270; i-=nInc) {
    vertex(300+cos(radians(i))*100, 300+sin(radians(i))*100, 0);
  } 
  vertex(D.x, D.y, D.z);
  vertex(E.x, E.y, E.z);
  vertex(F.x, F.y, F.z);
  vertex(G.x, G.y, G.z);
  vertex(H.x, H.y, H.z);
  endShape(CLOSE);

  beginShape();
  vertex(A.x, A.y, A.z-400);
  vertex(B.x, B.y, B.z-400);
  vertex(C.x, C.y, C.z-400);
  for (int i=360; i>270; i-=nInc) {
    vertex(300+cos(radians(i))*100, 300+sin(radians(i))*100, -400);
  } 
  vertex(D.x, D.y, D.z-400);
  vertex(E.x, E.y, E.z-400);
  vertex(F.x, F.y, F.z-400);
  vertex(G.x, G.y, G.z-400);
  vertex(H.x, H.y, H.z-400);
  endShape(CLOSE);

  beginShape(QUAD_STRIP);
  vertex(A.x, A.y, A.z);
  vertex(A.x, A.y, A.z-400);
  vertex(B.x, B.y, B.z);
  vertex(B.x, B.y, B.z-400);
  vertex(C.x, C.y, C.z);
  vertex(C.x, C.y, C.z-400);
  for (int i=360; i>270; i-=nInc) {
    vertex(300+cos(radians(i))*100, 300+sin(radians(i))*100, 0);
    vertex(300+cos(radians(i))*100, 300+sin(radians(i))*100, -400);
  }  
  vertex(D.x, D.y, D.z);
  vertex(D.x, D.y, D.z-400);
  vertex(E.x, E.y, E.z);
  vertex(E.x, E.y, E.z-400);
  vertex(F.x, F.y, F.z);
  vertex(F.x, F.y, F.z-400);
  vertex(G.x, G.y, G.z);
  vertex(G.x, G.y, G.z-400);
  vertex(H.x, H.y, H.z);
  vertex(H.x, H.y, H.z-400);
  vertex(A.x, A.y, A.z);
  vertex(A.x, A.y, A.z-400);
  endShape();
}
