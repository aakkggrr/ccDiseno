void mousePressed() {
}


void mouseDragged()
{
  if (mouseButton==LEFT) {
    rotX += (mouseX - pmouseX) * 0.01;
    rotY -= (mouseY - pmouseY) * 0.01;
  }
  if (mouseButton==CENTER) {
    posCamY += pmouseY-mouseY;
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  //println(e);
  radioCam+=e*5;
}

