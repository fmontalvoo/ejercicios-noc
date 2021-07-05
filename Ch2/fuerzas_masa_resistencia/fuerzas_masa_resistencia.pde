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
    
    //Fuerza de arrastre
    PVector drag = c.velocity.copy();
    drag.normalize();
    drag.mult(-1);
    
    float speed = c.velocity.mag();
    float coefficient = 0.05;
    drag.mult(coefficient*speed*speed);
    
    c.applyForce(drag);

    c.display();
    c.update();
    c.checkEdges();
  }
}
