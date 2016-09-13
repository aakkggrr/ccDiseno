

color [] cBack = {
  #b8d8ba, #69585F, #D9DBBC, #FCDDBC, #EF959D
};
boolean aleatorio = true;
void setup () {
  size (1200, 1000, P3D);
  background(cBack [int (random (cBack.length))]);
  noFill();
  strokeWeight(.3);
  bezierDetail(80);
  noLoop();
  smooth (4);
}

void draw () {
  background(cBack [int (random (cBack.length))]);
  bez (100, 100, height-50);
}

void bez (int num, int yIni, int yFin) {
  for (int i=0; i<num; i++) {
    float sw = random (0.5, 10);
    strokeWeight (sw);
    stroke(cBack [int (random (cBack.length))]);
    float piY = yIni+i+sw;
    float pfY =0;
    if (aleatorio)
      pfY = random (yFin);
    else pfY = map (i, 0, num, 0, height);
    bezier (0, piY, width/2, piY, width/2, pfY, width, pfY);

    // bezier (0,0,width/2,0,width/2,400,width,400);
    //bezier (0,5,width/2,5,width/2,395,width,395);
    //for (int i=5; i<=400; i++){
    //    bezier (0,i,width/2,i,width/2,i-5,width,400-i);
  }
}