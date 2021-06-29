public class Circle {

  PVector location;
  PVector velocity;
  PVector acceleration;

  public Circle() {
    this.location = new PVector(width/2, height/2);
    this.velocity = new PVector(0, 0);
    this.acceleration = new PVector(0, 0);
  }

  public void applyForce(PVector force) {
    this.acceleration.add(force);
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
    ellipse(this.location.x, this.location.y, 30, 30);
  }

  public void checkEdges() {
    if (this.location.x >= (width-15)) {
      this.velocity.x *= -1;
      this.location.x = width-15;
    } else if (this.location.x < 15) {
      this.velocity.x *= -1;
      this.location.x = 15;
    }

    if (this.location.y >= (height-15)) {
      this.velocity.y *= -1;
      this.location.y = height-15;
    }
  }
}
