Caminante c;

void setup() {
  size(640, 320);
  background(255);
  c = new Caminante();
}

void draw() {
  c.mostrar();
  c.camina();
  //c.caminar();
}
