float r = 50.0; // Radio
float a = -PI/4; // Angulo

float aV = 0.0; // Velocidad
float aA = 0.0001; // Aceleracion

void setup() {
  size(640, 320, P2D);
}

void draw() {
  background(255);
  translate(width/2, height/2);

  noFill();
  strokeWeight(2);
  
  stroke(0, 255, 0);
  ellipse(0, 0, 2*r, 2*r);

  float x = r * cos(a); // Calcula la coordenada en X.
  float y = r * sin(a); // Calcula la coordenada en Y.

  println("X: "+x+" Y: "+y);

  stroke(255, 0, 0);
  ellipse(x, y, r, r);

  stroke(0, 0, 255);
  line(x, 0, x, y);
  line(0, 0, x, 0);
  line(0, 0, x, y);

  a += aV;
  aV += aA;
  aV = constrain(aV, 0, 0.05); // Limita la velocidad entre 0 y 0.05.
}
