class Ball {

  private float radius;
  private float diameter;
  private PVector location;
  private PVector velocity;

  Ball(float r, float x, float y, float vx, float vy) {
    this.radius = r;
    this.diameter = 2 * r;

    this.location = new PVector(x, y);
    this.velocity = new PVector(vx, vy);
  }

  void display() {
    fill(0);
    stroke(127);
    strokeWeight(2);
    ellipse(this.location.x, this.location.y, this.diameter, this.diameter);
  }

  void move() {
    this.location.add(this.velocity);
  }

  void bounce() {
    if (this.location.x <= this.radius || this.location.x >= (width-this.radius))
      this.velocity.x *= -1;

    if (this.location.y <= this.radius || this.location.y >= (height-this.radius))
      this.velocity.y *= -1;
  }
}
