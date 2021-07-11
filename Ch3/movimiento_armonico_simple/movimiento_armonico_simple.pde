float amplitud = 160;
float periodo = 420;
float angulo = 0.0;

void setup() {
  size(640, 320, P2D);
}

void draw() {
  background(255);
  translate(width/2, height/2);

  angulo = (frameCount/periodo) * TWO_PI;
  float x = amplitud * cos(angulo);
  float y = (amplitud/2) * sin(angulo);
  println(frameCount+" | "+frameCount/periodo);
  
  fill(127);
  stroke(0);
  line(0, 0, x, 0);
  line(0, 0, 0, y);
  line(0, 0, x, y);
  ellipse(x, y, 20, 20);
  
  //angulo += 0.05; // Agregando velocidad.
}
