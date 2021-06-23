class Circulo {

  private float x;
  private float y;
  private float r;
  private float d;
  private float vx;
  private float vy;

  Circulo(float r, float x, float y, float vx, float vy) {
    this.r = r;
    this.d = 2 * r;

    this.x = x;
    this.y = y;

    this.vx = vx;
    this.vy = vy;
  }

  void dibujar() {
    fill(127);
    stroke(0);
    strokeWeight(2);
    ellipse(this.x, this.y, this.d, this.d);
  }

  void mover() {
    this.x += this.vx;
    this.y += this.vy;
  }

  void rebotar() {
    if (x <= this.r || x >= (width-this.r))
      vx *= -1;

    if (y <= this.r || y >= (height-this.r))
      vy *= -1;
  }
}
