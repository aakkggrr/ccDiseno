/* 
 ArrayList
 */
ArrayList<Particula> particulas;

void setup() {
  //size(displayWidth, displayHeight);
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  background(0);
  particulas = new ArrayList<Particula>();

  particulas.add(new Particula() );
  noCursor();
}

void draw() {
  background(0);
  println(particulas.size());
  for (int i=particulas.size()-1; i>=0; i--) {
    Particula p = particulas.get(i);
    p.draw();
    p.update();
    if (p.muere) {
      particulas.remove(i);
    }
  }
}

void mousePressed() {
  particulas.add(new Particula(mouseX, mouseY));
}

void mouseDragged() {
  particulas.add(new Particula(mouseX, mouseY));
}

void keyPressed() {
  if (key == ' ') {
    particulas.add(new Particula() );
  }
}
