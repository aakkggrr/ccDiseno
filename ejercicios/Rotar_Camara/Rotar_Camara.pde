int radio = 300;

void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(200);

  //camera(sin(radians(mouseX))*radio, -100, cos(radians(mouseX))*radio, 0, 0, 0, 0, 1, 0);
  camera(sin(radians(frameCount))*radio, -100, cos(radians(frameCount))*radio, 0, 0, 0, 0, 1, 0);
  box(50);
  translate(0, 80, 0);
  sphere(30);
}

