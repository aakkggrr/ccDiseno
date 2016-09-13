void carasSimples() {
  beginShape();
  vertex(50, 50);
  vertex(250, 50);
  vertex(250, 250);
  endShape(CLOSE);

  translate (300, 0);
  beginShape();
  vertex(50, 50);
  vertex(250, 50);
  vertex(250, 250);
  vertex(50, 250);
  endShape(CLOSE);

  translate (300, 0);
  beginShape();
  vertex(50, 50);
  vertex(250, 50);
  vertex(250, 250);
  vertex(50, 250);
  vertex(10, 125);
  endShape(CLOSE);
}

void puntosLineas () {
  for (int i=0; i<360; i+=angulo) {
    //    point(sin(radians(i+frameCount))*radio, sin(radians(i*45+frameCount))*30, cos(radians(i+frameCount))*radio);
    strokeWeight(10);
    //    point(sin(radians(i))*radio, sin(radians(i*2))*30, cos(radians(i))*radio);
    //    point(sin(radians(i+frameCount))*radio, sin(radians(i*45+frameCount))*30, cos(radians(i+frameCount))*radio);
    point(
      sin(radians(i+frecuencia))*radio, 
      sin(radians((i+frecuenciaY)*ciclos))*30, 
      cos(radians(i+frecuencia))*radio
      );

    strokeWeight(2);
    line(
      sin(radians(i+frecuencia))*radio, 
      sin(radians((i+frecuenciaY)*ciclos))*30, 
      cos(radians(i+frecuencia))*radio, 
      sin(radians(i+angulo+frecuencia))*radio, 
      sin(radians((i+frecuenciaY+angulo)*ciclos))*30, 
      cos(radians(i+angulo+frecuencia))*radio    
      );
  }
  beginShape(TRIANGLE_STRIP);
  for (int i=0; i<=360; i+=angulo) {
    if (i<180)
      fill (map(i, 0, 180, 0, 255));
    else
      fill (map(i, 180, 360, 255, 0));
    vertex(
      sin(radians(i+frecuencia))*radio, 
      sin(radians((i+frecuenciaY)*ciclos))*30, 
      cos(radians(i+frecuencia))*radio   
      );
    vertex(
      sin(radians(i+frecuencia))*radio*0.7, 
      sin(radians((i+frecuenciaY)*ciclos))*30, 
      cos(radians(i+frecuencia))*radio*0.7   
      );
    endShape();
  }
}