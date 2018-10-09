void keyPressed() {
  switch(key) {
  case ' ':
    ////////////
    break;
  case 'r':
    gira = !gira; // t -> f; f -> t
    break;
  case 's':
    guardaFrame = true;
    break;
  case 'm':
    guardaOBJ = true;
    break;
  case 'x':
    exit();
    break;
  }
}
/*
if(key==' '){
 
 } else if(key == 'r'){
 
 } else if(key == 's'){
 
 }
 */
