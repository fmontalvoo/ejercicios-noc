Ball b;
Circulo c;

void setup() {
  size(640, 320, P2D);
  b = new Ball(15, width*0.3, height/2, 2, 2);
  c = new Circulo(15, width*0.6, height/2, 2, 2);
}

void draw() {
  background(50);
  c.dibujar();
  c.mover();
  c.rebotar();
  
  b.display();
  b.move();
  b.bounce();
}
