PGraphics canvas;
PImage imagen;
int posY=0;
PVector a, b, c, d;
int nodoAct = 0;
boolean editar = false;

void setup() {
  size(800, 900, P3D);
  canvas = createGraphics(100, 100, P3D);
  imagen = loadImage("imagen00.jpg");

  a=new PVector(100, 100);
  b=new PVector(width-100, 100);
  c=new PVector(width-100, height-100);
  d=new PVector(100, height-100);
}

void draw() {
  //  camera(200, -100, 200, 0, 0, 0, 0, 1, 0);
  background(0);
  canvas.beginDraw();
  canvas.strokeWeight(4);
  canvas.stroke(255);
  canvas.background(200);
  canvas.line(0, posY, canvas.width, posY);
  canvas.endDraw();

  posY++;
  if (posY>canvas.height)
    posY=0;

  //  image(canvas, 0, 0);
  noStroke();
  textureMode(NORMAL); // normalizar 0 a 1

  beginShape();
  texture(canvas);  
  vertex(a.x, a.y, 1, 1);
  vertex(b.x, b.y, 0, 1);
  vertex(c.x, c.y, 0, 0);
  vertex(d.x, d.y, 1, 0);
  endShape(CLOSE);

  if (editar) {
    pushStyle();
    stroke(255, 0, 0);
    strokeWeight(10);
    point(a.x, a.y);
    point(b.x, b.y);
    point(c.x, c.y);
    point(d.x, d.y);
    popStyle();
  }
  /*
  image(imagen, 0, 0);
   
   textureMode(NORMAL);
   beginShape();
   texture(imagen);  
   vertex(100, 100, 1, 1);
   vertex(-100, 100, 0, 1);
   vertex(-100, -100, 0, 0);
   vertex(100, -100, 1, 0);
   endShape(CLOSE);
   
   translate(200, 0, 0);
   textureMode(IMAGE);
   beginShape();
   texture(imagen);  
   vertex(100, 100, imagen.width/2, imagen.height/2);
   vertex(-100, 100, 0, imagen.height/2);
   vertex(-100, -100, 0, 0);
   vertex(100, -100, imagen.width/2, 0);
   endShape(CLOSE);
   */
}

void keyPressed() {
  if (key=='1')
    nodoAct = 1;
  if (key=='2')
    nodoAct = 2;   
  if (key=='3')
    nodoAct = 3;
  if (key=='4')
    nodoAct = 4;
  if (key=='0')
    nodoAct = 0;
  if (key=='e')
    editar=!editar;

  if (key==CODED) {
    if (keyCode==RIGHT) {
      mueve(1, 0);
    }
    if (keyCode==LEFT) {
      mueve(-1, 0);
    }
    if (keyCode==UP) {
      mueve(0, -1);
    }
    if (keyCode==DOWN) {
      mueve(0, 1);
    }
  }
}

void mueve(int mX, int mY) {
  switch(nodoAct) {
  case 1:
    a.x+=mX;
    a.y+=mY;
    break;
  case 2:
    b.x+=mX;
    b.y+=mY;
    break;
  case 3:
    c.x+=mX;
    c.y+=mY;
    break;
  case 4:
    d.x+=mX;
    d.y+=mY;
    break;
  }
}

