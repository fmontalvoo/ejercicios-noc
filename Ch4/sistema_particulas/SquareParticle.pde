class SquareParticle extends Particle {

  float angle = 0.0;
  float aVelocity = 0.0;
  float aAcceleration = 0.001;

  SquareParticle(PVector location) {
    super(location);
  }

  void display() {

    this.angle += this.aVelocity;
    this.aVelocity += this.aAcceleration;

    stroke(0, this.lifespan);
    strokeWeight(2);

    fill(127, this.lifespan);
    
    pushMatrix();
    translate(this.location.x, this.location.y);
    rectMode(CENTER);
    rotate(this.angle);
    rect(0, 0, 14, 14);
    popMatrix();
  }
}
