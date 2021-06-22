class Caminante {

  float x;
  float y;
  float dx;
  float dy;

  Caminante() {
    this.x = width * 0.5;
    this.y = height * 0.5;
    this.dx = 2;
    this.dy = 2;
  }

  void mostrar() {
    noStroke();
    fill(200, 0, 0);
    ellipse(this.x, this.y, 5, 5);
  }

  void caminar() {
    int choice = int(random(4));

    switch(choice) {
    case 0:
      y -= this.dy;
      break;
    case 1:
      x += this.dx;
      break;
    case 2:
      y += this.dy;
      break;
    case 3:
      x -= this.dx;
      break;
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}
