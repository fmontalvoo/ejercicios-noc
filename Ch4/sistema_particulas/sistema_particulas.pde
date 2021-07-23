ArrayList<Particle> particles;

void setup() {
  size(640, 320, P2D);
  particles = new ArrayList<Particle>();
  for (int i = 0; i < 5; i++) {
    particles.add(new Particle(new PVector(width/2, 30)));
  }
}

void draw() {
  background(255);

  particles.add(new Particle(new PVector(width/2, 30)));

  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.display();
    p.update();

    if (!p.isAlive())
      particles.remove(i);
  }
  
  println(particles.size());
}
