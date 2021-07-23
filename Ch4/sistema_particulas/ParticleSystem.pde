class ParticleSystem {

  ArrayList<Particle> particles;

  PVector origin;
  ParticleSystem(PVector origin) {
    this.origin = origin.copy();

    particles = new ArrayList<Particle>();
    for (int i = 0; i < 5; i++) {
      particles.add(new Particle(origin));
    }
  }
  void display() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.display();
      p.update();

      if (!p.isAlive() || particles.size() > 70)
        particles.remove(i);
    }

  }

  void update() {
    particles.add(new Particle(origin));
  }
}
