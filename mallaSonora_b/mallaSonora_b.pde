//Nodos n;
//ArrayList<Nodos> nodoAL;
import processing.dxf.*;
boolean graba;

Malla malla;
void setup() {
  size(displayWidth, displayHeight, P3D);
  background(0);
  //n = new Nodos(8, 200);
  //nodoAL = new ArrayList<Nodos>();
  malla = new Malla();
  noCursor();
}

void draw() {
    if (graba) {
    beginRaw(DXF, "output.dxf"); // Start recording to the file
  }
  background(0);
  camera(-200, -200, 200, -100, -150, 0, 0, 1, 0);
  malla.draw();
  malla.update();
  //n.draw();
  //n.update();

  //for (int i=nodoAL.size()-1; i>=0; i--) {
  //  Nodos nd = nodoAL.get(i);
  //  nd.draw();
  //  nd.update();
  //}

  //if(frameCount % 15 == 0){
  //  nodoAL.add(new Nodos(16, 450));
  //}
  if (graba) {
    endRaw();
    graba = false; // Stop recording to the file
  }
}

void mousePressed() {
  //nodoAL.add(new Nodos(16, 450));
    if (key == 'R' || key == 'r') { // Press R to save the file
    graba = true;
  }
}
