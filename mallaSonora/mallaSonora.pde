Nodos n;
ArrayList<Nodos> nodoAL;

void setup() {
  size(displayWidth, displayHeight, P3D);
  background(0);
  n = new Nodos(8, 200);
  nodoAL = new ArrayList<Nodos>();
}

void draw() {
  background(0);
  camera(-200, -200, 200, 0, 0, 0, 0, 1, 0);

  n.draw();
  n.update();

  for (int i=nodoAL.size()-1; i>=0; i--) {
    Nodos nd = nodoAL.get(i);
    nd.draw();
    nd.update();
  }
  
  if(frameCount % 15 == 0){
    nodoAL.add(new Nodos(16, 450));
  }
}

void mousePressed() {
  nodoAL.add(new Nodos(16, 450));
}
