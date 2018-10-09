class Particula3D {

  PVector pt;
  int tam;
  float vel;
  boolean muere;
  float punta, base;
  float sat, bri;
  Particula3D() {
    pt = new PVector(random(-400, 400), random(-400, 400), -1500);
    tam = int(random(20, 50));
    vel = random(1, 5);
    punta = random(200, 300);
    base = random(200, 300);
    sat = random(100);
    bri = random(100);
  }

  Particula3D(int x, int y) {
    pt = new PVector(map(x, 0, width, -400, 400), map(y, 0, height, -400, 400), -1500);
    tam = int(random(20, 50));
    vel = random(1, 5);
    punta = random(200, 300);
    base = random(200, 300);
    sat = random(100);
    bri = random(100);
  }

  void draw() {
    stroke(0);
    beginShape(TRIANGLE_FAN);
    fill(punta, sat, bri);
    vertex(pt.x, pt.y, pt.z); // CENTRO
    fill(base, sat, bri);
    vertex(pt.x-tam/2, pt.y-tam/2, pt.z+tam);
    vertex(pt.x-tam/2, pt.y+tam/2, pt.z+tam);
    vertex(pt.x+tam/2, pt.y+tam/2, pt.z+tam);
    vertex(pt.x+tam/2, pt.y-tam/2, pt.z+tam);
    vertex(pt.x-tam/2, pt.y-tam/2, pt.z+tam);
    endShape();
    beginShape(TRIANGLE_FAN);
    fill(punta, sat, bri);
    vertex(pt.x, pt.y, pt.z+tam*2); // CENTRO
    fill(base, sat, bri);
    vertex(pt.x-tam/2, pt.y-tam/2, pt.z+tam);
    vertex(pt.x-tam/2, pt.y+tam/2, pt.z+tam);
    vertex(pt.x+tam/2, pt.y+tam/2, pt.z+tam);
    vertex(pt.x+tam/2, pt.y-tam/2, pt.z+tam);
    vertex(pt.x-tam/2, pt.y-tam/2, pt.z+tam);
    endShape();
  }

  void update() {
    pt.z += vel;
    if (pt.z > 10)
      muere = true;
  }
}
