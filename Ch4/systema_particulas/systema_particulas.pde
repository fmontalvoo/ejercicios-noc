ArrayList<Particle> particles;

void setup() {
  size(640, 320, P2D);
  particles = new ArrayList<Particle>();
  for (int i = 0; i < 10; i++) {
    particles.add(new Particle(new PVector(width/2, 30)));
  }
}

void draw() {
  background(255);
  if (!particles.isEmpty()) {
    for (int i = 0; i < particles.size(); i++) {
      particles.get(i).display();
      particles.get(i).update();
      if (!particles.get(i).isAlive())
        particles.remove(i);
    }
  }

  if (mousePressed) {
    for (int i = 0; i < 5; i++) {
      particles.add(new Particle(new PVector(mouseX, mouseY)));
    }
  }
}
