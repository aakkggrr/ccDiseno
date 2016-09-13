//modelado 3D por coordenadas
boolean ddd =false;
int contenido =0;
void setup () {
  size (600, 800, P3D);
  rectMode (CENTER);
}

void draw () {
  background (200);


  pushMatrix ();
  rotateX(HALF_PI);
  fill (255, 100);
  box (20);
  rect (0, 0, 200, 200);
  popMatrix();



  pushStyle ();
  strokeWeight (2);

  cara (100);
  cara (-100);

  beginShape (QUAD_STRIP);
  vertex (100, 0, 100);
  vertex (100, 0, -100);
  vertex (100, 100, 100);
  vertex (100, 100, -100);
  vertex (-100, 100, 100);
  vertex (-100, 100, -100);
  vertex (-100, -100, 100);
  vertex (-100, -100, -100);
  vertex (0, -100, 100);
  vertex (0, -100, -100);

  for (int  i=270; i <=360; i+=10) {
    vertex (cos (radians (i))*100, sin (radians(i))*100, 100);

    vertex (cos (radians (i))*100, sin (radians(i))*100, -100);
  }
  endShape();



  popStyle ();
}
void cara (int posZ) {
  beginShape();
  vertex (100, 0, posZ);
  vertex (100, 100, posZ);
  vertex (-100, 100, posZ);
  vertex (-100, -100, posZ);
  vertex (0, -100, posZ);

  for (int  i=270; i <=360; i+=10) {
    vertex (cos (radians (i))*100, sin (radians(i))*100, posZ);
  }


  endShape();


  switch (contenido) {
  case 0:
    camera (200, -200, 200, 0, 0, 0, 0, 1, 0);
    break;

  case 1:
    camera (0, 0, 500, 0, 0, 0, 0, 1, 0);
    break;

  case 2:
    camera (500, -500, 200, 0, 0, 0, 0, 1, 0);
    break;

  case 3:
    camera (100, -100, 500, 0, 0, 0, 0, 1, 0);
    break;

  case 4:
    camera (cos (frameCount*.1)*500,0,sin (frameCount*.1)*500,0, 0, 0, 0, 1, 0);
    break;
  }}
  
  void keyPressed () {
    if (key== ' ')
      ddd =!ddd;
      
      if (key== '1')
      contenido =1;
      if (key== '2')
       contenido =2;
      if (key== '3')
       contenido =3;
      if (key== '4')
       contenido =4;
      
      
  }