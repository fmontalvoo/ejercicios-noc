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

    PVector gravity = new PVector(0, 0.09);
    PVector wind = new PVector(0.01, 0);
    gravity.mult(c.mass); // Ajusta la fuerza de gravedad segun la masa del objeto.
    c.applyForce(gravity);
    c.applyForce(wind);
    
    // Friccion
    PVector friction = c.velocity.copy();
    friction.normalize();
    friction.mult(-1);
    
    float coefficient = 0.05;
    friction.mult(coefficient);
    
    c.applyForce(friction);

    c.display();
    c.update();
    c.checkEdges();
  }
}
