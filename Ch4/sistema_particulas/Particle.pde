class Particle {

  PVector location;
  PVector velocity;
  PVector acceleration;

  float lifespan = 255;

  Particle(PVector location) {
    this.acceleration = new PVector(0, 0.05);
    this.velocity = new PVector(random(-1, 1), random(-1, 1));
    this.location = location.copy();
  }

  boolean isAlive() {
    if (this.location.y >= height-7)
      return false;
    return true;
  }

  void update() {
    this.lifespan -= 2;

    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
  }

  void display() {
    stroke(0, this.lifespan);
    strokeWeight(2);
    fill(127, this.lifespan);
    ellipse(this.location.x, this.location.y, 14, 14);
  }
}
