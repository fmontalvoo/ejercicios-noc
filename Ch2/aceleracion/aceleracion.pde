Circulo c1, c2, c3;

void setup() {
  size(640, 320, P2D);
  c1 = new Circulo(15, width*0.3, height*0.5, 0, 0, true, false);
  c2 = new Circulo(15, width*0.6, height*0.5, 2, 2, false, true);
  c3 = new Circulo(15, width*0.9, height*0.5, 2, 2);
}

void draw() {
  background(127);

  c1.dibujar();
  c1.actualizar();
  c1.bordes();

  c2.dibujar();
  c2.actualizar();
  c2.bordes();

  c3.dibujar();
  c3.mover();
  c3.rebotar();
}
