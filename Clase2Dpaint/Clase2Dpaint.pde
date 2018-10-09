//Pintura p;
/*
  [0,1,2,3,4]      Array
 <0,1,2,3,4,5,6>  ArrayList
 <0>
 */

ArrayList<Pintura> pL;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  //p = new Pintura();
  pL = new ArrayList<Pintura>();
}

void draw() {
  //background(0);

  //p.draw();
  //p.update();
  println(pL.size());
  // <0,1,2>  pL.size() = 3
  // 0
  for (int i = pL.size()-1; i>=0; i--) { // 3
    Pintura pin = pL.get(i);
    pin.draw();
    pin.update();

    if (pin.muere) {
      pL.remove(i);
    }
  }
}
int C;

void mouseDragged() {
  //pL.add(new Pintura());
  pL.add(new Pintura(mouseX, mouseY, C));
}

void keyPressed() {
  if (key==' ')
    background(0);

  if (key == 's')
    saveFrame("####_.png");
}

void mousePressed() {
  C = int(random(360));
}
