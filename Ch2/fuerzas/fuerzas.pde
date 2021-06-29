public Circle c;

void setup(){
  size(640, 320);
  c = new Circle();
}

void draw(){
  background(255);
  
  PVector force = new PVector(0, 0.1);
  c.applyForce(force);
  
  c.display();
  c.update();
  c.checkEdges();
}
