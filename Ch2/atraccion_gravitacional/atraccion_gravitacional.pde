Circle b;

Circle planets[];

void setup() {
  size(720, 480);
  background(255);
  b = new Circle(width/2, height/2, 10, 20, 0, 0);
  b.setColor(color(0));

  planets = new Circle[4];
  for (int i = 0; i < planets.length; i++) {
    planets[i]  = new Circle((width/4) * i, height*0.2, random(4, 8), random(1, 4), 1, 0);
    float r = random(255);
    float g = random(255);
    float b = random(255);
    planets[i].setColor(color(r, g, b));
  }
}

void draw() {
  //background(255);
  b.display();

  for (Circle p : planets) {
    PVector attraction = b.attrack(p);

    p.display();
    p.applyForce(attraction);
    p.update();
  }
}
