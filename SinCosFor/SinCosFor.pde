int radioCam = 400;

// 5 segundos // 60fps ======== 300frames
int cuentaFrames = 0;

void setup() {
  size(1000, 1000, P3D);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(200);
  camera(
    cos(radians(frameCount*.25))*radioCam, 
    -150, 
    sin(radians(frameCount*.25))*radioCam, 
    0, 0, 0, 0, 1, 0);

  strokeWeight(1);
  for (int j=-10; j<10; j++) {
    beginShape(TRIANGLE_STRIP);
    for (int i=-10; i<10; i++) {
      float col = map(i, -10, 10, 0, 360);
      float b = map(j, -10, 10, 20, 100);
      fill(col, 100, b, 100);
      vertex(i*20, /*k*10+*/sin(radians(frameCount*5+i*50))*20, j*20);
      vertex(i*20, /*k*10+*/sin(radians(frameCount*5+i*50))*20, (j+1)*20);
    }  
    endShape();
  }

  for (int j=-10; j<10; j++) {
    for (int i=-10; i<10; i++) {
      strokeWeight(noise(i+j)*20);
      point(i*20, sin(radians(frameCount*5+i*50))*20, j*20);
    }
  }

  saveFrame("img/Captura_"+cuentaFrames+".png");
  cuentaFrames++;

  if (cuentaFrames>=300)
    exit();
}


/*
 a++;     a = a+1;
 a--;     a=a-1;
 a+=10;   a = a+10;
 a-=10;   a = a-10;
 */
