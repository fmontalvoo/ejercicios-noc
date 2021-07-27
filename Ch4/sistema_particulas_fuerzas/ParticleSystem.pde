class ParticleSystem {

  ArrayList<Particle> particles;

  PVector origin;
  ParticleSystem(PVector origin) {
    this.origin = origin.copy();
    this.particles = new ArrayList<Particle>();
  }

  void applyForce(PVector force) {
    for (Particle p : particles) {
      p.applyForce(force);
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
    float r = random(1);
    if (r < 0.1)
      particles.add(new Particle(origin));
    else if (r < 0.45)
      particles.add(new SquareParticle(origin));
    else if (r < 1)
      particles.add(new TriangleParticle(origin));
  }
}
