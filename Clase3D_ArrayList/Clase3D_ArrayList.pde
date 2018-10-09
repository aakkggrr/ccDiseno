import peasy.*;
PeasyCam cam;

Particula3D p;
ArrayList<Particula3D> ps;

void setup() {
  fullScreen(P3D, 2);
  cam = new PeasyCam(this, 1000);
  //size(displayWidth, displayHeight, P3D);
  colorMode(HSB, 360, 100, 100);
  background(0);

  p = new Particula3D();
  ps = new ArrayList<Particula3D>();
}

void draw() {
  background(0);
  //camera(0, 0, 500, 0, 0, 0, 0, 1, 0);
  lights();

  pointLight(255, 255, 255, 0, 200, 50);
  pointLight(255, 255, 255, 200, -200, 150);
  p.draw();
  p.update();

  for (int i = ps.size()-1; i>=0; i--) {
    Particula3D p3d = ps.get(i);
    p3d.draw();
    p3d.update();
    if (p3d.muere) {
      ps.remove(i);
    }
  }
  if (frameCount%10 == 0)
    ps.add(new Particula3D());
}

void mouseDragged() {
  //ps.add(new Particula3D(mouseX, mouseY));
}
