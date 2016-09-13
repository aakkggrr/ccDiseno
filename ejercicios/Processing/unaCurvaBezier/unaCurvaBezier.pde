color[] cBack = {
  #2e637c, #4f85ae, #54afdb, #77c8e7, #255867
};
boolean aleatorio = true;

void setup() {
  size(displayWidth/2, displayHeight-100, P3D);
  background(cBack[int(random(cBack.length))]);
  noFill();

  strokeWeight(4);
  bezierDetail(80); // 20 default
  noLoop();
  smooth(4);
}

void draw() {
  background(cBack[int(random(cBack.length))]);
  bez(300, 150, height-15);
}

void bez(int num, int yIni, int yFin) {
  for (int i=0;i<num;i++) {
    float sw = random(0.5, 10);
    strokeWeight(sw);
    stroke(cBack[int(random(cBack.length))]);
    float piY = yIni+i+sw;

    float pfY=0;
    if (aleatorio)
      pfY = random(yFin);
    else
      pfY = map(i, 0, num, 0, height);

    bezier(0, piY, width/2, piY, width/2, pfY, width, pfY);
  }
}

