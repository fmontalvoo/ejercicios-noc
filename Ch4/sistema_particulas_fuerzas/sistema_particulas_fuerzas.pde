ArrayList<ParticleSystem> systems;

void setup() {
  size(640, 320, P2D);
  systems  = new ArrayList<ParticleSystem>();
}

void draw() {
  background(255);
  for (ParticleSystem ps : systems) {
    ps.update();
    ps.display();
    
    PVector gravity = new PVector(0, 0.05);
    ps.applyForce(gravity);
    
    if (keyPressed == true) {
      PVector wind = new PVector(0.1, 0);
      ps.applyForce(wind);
    }
  }
}

void mousePressed() {
  ParticleSystem ps = new ParticleSystem(new PVector(mouseX, mouseY));
  systems.add(ps);
}
