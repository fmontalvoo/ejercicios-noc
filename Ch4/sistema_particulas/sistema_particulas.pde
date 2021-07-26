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
  }
}

void mousePressed() {
  ParticleSystem ps = new ParticleSystem(new PVector(mouseX, mouseY));
  systems.add(ps);
}
