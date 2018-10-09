class Pintura {
  float pX, pY;
  float vY;
  float Tam, tam;

  float h, s, b, a;
  float factor;
  boolean muere; //false

  Pintura() { // configuracion
    pX = random(width);
    pY = 0;
    vY = random(2, 10);
    Tam = random(20, 40);
    tam = random(2, 10);
    h = 30;
    s = random(80, 100);
    b = random(40, 100);
    a = random(80, 100);
    factor = random(0.95, 1);
  }

  Pintura(int x, int y, int c) { // configuracion
    pX = x;
    pY = y;
    vY = random(1, 5);
    Tam = random(20, 40);
    tam = random(2, 10);
    h = c;
    // rojo = 0; azul = 240;
    //h = 60+int(random(3))*120;
    //s = random(80, 100);
    s = 50+noise(x)*20;
    b = 80+noise(x)*20;//random(40, 100);
    a = 80+noise(x*.01)*20;//random(80, 100);
    factor = random(0.92, 0.96);
  }

  void draw() { // dibujo
    strokeWeight(Tam);
    stroke(h, s, b, a);
    point(pX, pY);
  }

  void update() { // calculo
    pY += vY;
    vY *= 0.93;
    a*=0.92;
    b*=0.995;
    if (Tam > tam) {
      Tam *= factor;
    }

    if (vY < 0.1) {
      muere = true;
    }
  }
}
