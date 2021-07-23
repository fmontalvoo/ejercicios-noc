Particle p;

void setup(){
  size(640,320);
  p = new Particle(new PVector(width/2, 30));
}

void draw(){
  background(255);
  p.display();
  p.update();
}
