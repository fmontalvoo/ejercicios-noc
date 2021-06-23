Circulo c;

void setup() {
  size(640, 320);
  c = new Circulo(15, width*0.3, height*0.5);
}

void draw() {
  background(127);
  c.dibujar();
  c.mover();
  c.bordes();
}
