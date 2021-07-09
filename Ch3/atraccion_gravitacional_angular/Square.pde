public class Square {
  final float G = 1;

  private float mass;
  private float side;

  private color c;

  PVector location;
  PVector velocity;
  PVector acceleration;

  float angle = 0.0;
  float aVelocity = 0.0;
  float aAcceleration = 0.001;

  public Square(float x, float y, float s, float m, float vx, float vy) {
    this.side = s;
    this.mass = m;

    this.c = color(127);

    this.location = new PVector(x, y);
    this.velocity = new PVector(vx, vy);
    this.acceleration = new PVector(0, 0);
  }

  public void setColor(color c) {
    this.c = c;
  }

  //2da ley de Newton
  public void applyForce(PVector force) {
    PVector a = PVector.div(force, this.mass);
    this.acceleration.add(a);
  }

  public void update() {

    this.aAcceleration = this.acceleration.x/10.0;

    this.angle += this.aVelocity;
    this.aVelocity += this.aAcceleration;

    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
    this.acceleration.mult(0);
  }

  public void display() {
    stroke(0);
    fill(this.c);
    pushMatrix();
    rectMode(CENTER);
    translate(this.location.x, this.location.y);
    rotate(this.angle);
    rect(0, 0, this.side, this.side);
    popMatrix();
  }
}
