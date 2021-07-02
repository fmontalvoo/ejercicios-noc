public Circle[] circles;

void setup() {
  size(640, 320, P2D);

  circles = new Circle[4];

  for (int i = 0; i < circles.length; i++)
    circles[i] = new Circle();
}

void draw() {
  background(255);

  for (Circle c : circles) {

    PVector gravity = new PVector(0, 0.1);
    gravity.mult(c.mass);
    c.applyForce(gravity);

    if (mousePressed) {
      PVector wind = new PVector(0.1, 0);
      c.applyForce(wind);
    }

    c.display();
    c.update();
    c.checkEdges();
  }
}
