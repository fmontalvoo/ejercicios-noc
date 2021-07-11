PVector origen;
PVector esfera;
float magnitud;

float angulo = PI/2;
float aVel = 0; // Velocidad angular.
float aAcc = 0; // Aceleracion angular.

float G = 0.9;

void setup() {
  size(640, 320);

  magnitud = 160;
  origen = new PVector(width/2, 0);
  esfera = new PVector(width/2, magnitud);
}

void draw() {
  background(255);

  esfera.x = origen.x + magnitud * sin(angulo); // Calcula la coordenada en X de la esfera.
  esfera.y = origen.y + magnitud * cos(angulo); // Calcula la coordenada en Y de la esfera.

  line(origen.x, origen.y, esfera.x, esfera.y);
  fill(207,207,56);
  ellipse(esfera.x, esfera.y, 20, 20);

  aAcc = (-1 * G / magnitud) * sin(angulo); // Calcula la aceleracion de la esfera.

  angulo += aVel;
  aVel += aAcc;
  
  aVel *= 0.99; // Reduce la velocidad 1% cada vez.
}
