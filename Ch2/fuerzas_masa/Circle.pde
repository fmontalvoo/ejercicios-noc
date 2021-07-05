public class Circle {

  private float mass;
  private float radius;
  private float diameter;

  PVector location;
  PVector velocity;
  PVector acceleration;

  public Circle() {
    this.radius = random(10, 20);
    this.diameter = 2 * this.radius;
    this.mass = 0.1 * this.radius;

    this.location = new PVector(random(width), height/2);
    this.velocity = new PVector(0, 0);
    this.acceleration = new PVector(0, 0);
  }

  //2da ley de Newton
  public void applyForce(PVector force) {
    // F = M * A
    // A = F / M
    PVector a = PVector.div(force, this.mass);
    this.acceleration.add(a);
  }

  public void update() {
    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
    //this.velocity.limit(5);
    this.acceleration.mult(0);
  }

  public void display() {
    stroke(0);
    fill(127);
    ellipse(this.location.x, this.location.y, this.diameter, this.diameter);
  }

  public void checkEdges() {
    if (this.location.x >= (width-this.radius)) {
      this.velocity.x *= -1;
      this.location.x = width-this.radius;
    } else if (this.location.x < this.radius) {
      this.velocity.x *= -1;
      this.location.x = this.radius;
    }

    if (this.location.y >= (height-this.radius)) {
      this.velocity.y *= -1;
      this.location.y = height-this.radius;
    }
  }
}
