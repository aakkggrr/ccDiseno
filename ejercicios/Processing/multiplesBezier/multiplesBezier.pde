/* C E N T R O */
/* Especialidad. 
 Código Creativo para Diseño, 
 Propuesta grafica 03
 */
import processing.pdf.*;
////////// MODIFICABLES /////////////////
boolean grabar = true;

int detalleBez = 150;
boolean aleatorio = true;
/////////////////////////////////////////
color[] cBack = {
// #2e637c, #4f85ae, #54afdb, #77c8e7, #255867
//  #00FFFF, #FF00FF, #FFFF00, #000000, #FFFFFF
//  #84ffe0, #61c0ad, #ff6e43, #f3952b, #ffdd62
    #ffef91, #ff8c46, #c54c35, #70121b, #350206
//  #8d7460, #e3d1c9, #8b6e64, #745345, #92765f
//#151414, #131212, #201e1e, #0b0a0a, #0f0e0e
};
void setup() {
  size(1702, 630, P3D);

  if (grabar)
    beginRecord(PDF, "CENTRO_03"+int(random(100))+millis()+".pdf");
  smooth(4);
  bezierDetail(detalleBez);

  noFill();
  noLoop();
}


void draw() {

//  background(255);
  background(cBack[int(random(cBack.length))]);
  
  bez(300, 0, height);
  
  
  saveFrame("back"+int(random(100)*random(100))+".png");
  if (grabar) {
    endRecord();
    exit();
  }
}

void bez(int num, int yIni, int yFin) {
  for (int i=0;i<num;i++) {
    float sw = random(0.5, 3);
    strokeWeight(sw);
    stroke(cBack[int(random(cBack.length))]);
    
    float pfY=0;
    if (aleatorio)
      pfY = random(yFin);
    else
      pfY = map(i, 0, num, 0, height);

    float piY = yIni+i+sw;
    bezier(0, piY, width/2-i*1.15, piY, width/2-i*1.25, pfY, width, pfY);
  }
}

