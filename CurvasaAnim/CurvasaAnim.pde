float px = 1;
float py = 0;
boolean ida = true;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  fill(0,10);
  noStroke();
  rect(0, 0, width, height);
  //background(0);
  stroke(255);
  //51+sin(angulo*frec)*50
  strokeWeight(50 + sin(radians(frameCount*5))*25);
  line(0, height/4, width, height/4);
  ellipse(sin(radians(frameCount*5))*25+width/2, height/2, 50, 50);

  //strokeWeight(2);
  //point(px, py);
  //point(width-px, py+50);

  //py += 0.15;

  //if (ida)
  //  px *= 1.015;
  //else 
  //px *= 0.985;

  //if (px>width) 
  //  ida = false;

  //if (px<1)
  //  ida = true;
}

// fase+sin(ang*frecuencia)*amplitud
// (sin(ang)*amp, cos(ang)*amp)
