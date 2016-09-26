void keyPressed()
{
  if (key == 'r') {
    record = true;
  }
  if (key==' ') {
    semilla = int(random(5000));
    calculaNodos();
  }
}

