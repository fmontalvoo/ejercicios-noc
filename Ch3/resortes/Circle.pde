public class Circle {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  public Circle(float x, float y) {
    this.location = new PVector(x, y);
    this.velocity = new PVector(0, 0);
    this.acceleration  = new PVector(0, 0);
    this.mass = 1.0;
  }

  void applyForce(PVector force) {
    PVector a = PVector.div(force, this.mass);
    this.acceleration.add(a);
  }

  void update() {
    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
    this.acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(this.location.x, this.location.y, 40, 40);
  }
  
  void checkEdges(){
    if(this.location.x > width){
      this.location.x = 0;
    }else if(this.location.x < 0){
      this.location.x = width;
    }
    
    if(this.location.y > height){
      this.velocity.y *= -1;
      this.location.y = height;
    }
  }
}
