PImage[] foto;
int numFotos=7;
int numColor=6;

int imgAct= 0 ;

void setup(){
  size(800,600);
  background(120);
  rectMode(CORNER);
  
  foto = new PImage[numFotos];
  for(int i = 0 ; i<numFotos ; i++){
    foto[i]=loadImage("imagen0"+i+".jpg");
  }
}

void draw(){
  float escala= width/float(foto[imgAct].width);
  image(foto[imgAct],0,0,float(foto[imgAct].width)*escala,float(foto[imgAct].height)*escala);
 // println(float(foto[0].width)*(width/float(foto[0].width)));
 
 for(int i =0; i<numColor; i++){
 rect((width&numColor)*i, height-50, width/numColor, 50);
 }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode==RIGHT){
    imgAct++;
    imgAct = imgAct%numFotos;
    println(imgAct);
    }
    if(keyCode== LEFT){
    }
  }
}
