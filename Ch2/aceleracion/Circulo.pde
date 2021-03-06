class Circulo {

  private float radio;
  private float diametro;
  private boolean drawLine;
  private boolean moveRandom;

  private PVector ubicacion;
  private PVector velocidad;
  private PVector aceleracion;

  Circulo(float r, float x, float y, float vx, float vy) {
    this.radio = r;
    this.diametro = 2 * r;

    this.ubicacion = new PVector(x, y);
    this.velocidad = new PVector(vx, vy);
    this.aceleracion = new PVector(0, 0);
  }

  Circulo(float r, float x, float y, float vx, float vy, boolean drawLine, boolean moveRandom) {
    this.radio = r;
    this.diametro = 2 * r;

    this.drawLine = drawLine;
    this.moveRandom = moveRandom;

    this.ubicacion = new PVector(x, y);
    this.velocidad = new PVector(vx, vy);
    this.aceleracion = new PVector(0, 0);
  }

  void dibujar() {
    fill(255);
    stroke(0);
    strokeWeight(2);
    ellipse(this.ubicacion.x, this.ubicacion.y, this.diametro, this.diametro);
  }

  void mover() {
    this.ubicacion.add(this.velocidad);
  }

  void actualizar() {
    PVector mouse = new PVector(mouseX, mouseY);

    mouse.sub(this.ubicacion);
    mouse.setMag(0.5);

    if (this.moveRandom)
      this.aceleracion = PVector.random2D();
    else
      this.aceleracion = mouse;


    if (this.drawLine) {
      line(this.ubicacion.x, this.ubicacion.y, mouseX, mouseY);
      ellipse(mouseX, mouseY, 7, 7);
    }
    this.velocidad.add(this.aceleracion);
    this.ubicacion.add(this.velocidad);

    this.velocidad.limit(5);
  }

  void rebotar() {
    if (this.ubicacion.x <= this.radio || this.ubicacion.x >= (width-this.radio))
      this.velocidad.x *= -1;

    if (this.ubicacion.y <= this.radio || this.ubicacion.y >= (height-this.radio))
      this.velocidad.y *= -1;
  }

  void bordes() {
    if (this.ubicacion.x > width) this.ubicacion.x = 0;
    if (this.ubicacion.x < 0) this.ubicacion.x = width;
    if (this.ubicacion.y > height) this.ubicacion.y = 0;
    if (this.ubicacion.y < 0) this.ubicacion.y = height;
  }
}
