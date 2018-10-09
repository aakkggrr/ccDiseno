class Particula {
  float pX, pY;
  float vX, vY;
  float tam;
  float sat;
  
  float hue = 240;
  
  int choque; // 0
  boolean muere; // false

  Particula() { // constructor
    pX = random(width);
    pY = random(height);
    vX = random(-20, 20);
    vY = random(-20, 20);
    tam = 10;
    sat = random(20, 100);
  }

  Particula(int x, int y) { // constructor
    pX = x;
    pY = y;
    vX = random(-2, 2);
    vY = random(-2, 2);
    tam = 10;
    sat = random(20, 100);
  }

  void draw() {
    strokeWeight(tam);
    stroke(hue, sat, 100);
    point(pX, pY);
  }

  void update() { // Calculos 
    pX += vX; // pX = pX + vX;
    pY += vY;

    if (tam>10) {
      tam *= .995;
    }

    if (pX > width || pX < 0) {
      tam = 100;
      vX *= -1;
      choque++;
      hue = random(240, 360);
    }
    if (pY > height || pY < 0) {
      tam = 100;
      vY *= -1;
      choque++;
      hue = random(240, 360);
    }

    if (choque >= 5) {
      muere = true;
    }
  }
}
