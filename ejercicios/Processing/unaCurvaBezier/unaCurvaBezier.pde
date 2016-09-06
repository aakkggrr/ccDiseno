color[] cBack = {
  #2e637c, #4f85ae, #54afdb, #77c8e7, #255867
};

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
  
  stroke(cBack[int(random(cBack.length))]);
  bezier(0, 0, width/2, 0, width/2, 400, width, 400);
}

