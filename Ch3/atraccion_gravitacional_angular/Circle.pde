public class Circle {
  final float G = 1;

  private float mass;
  private float radius;
  private float diameter;

  private color c;

  PVector location;
  PVector velocity;
  PVector acceleration;

  public Circle(float x, float y, float r, float m, float vx, float vy) {
    this.radius = r;
    this.diameter = 2 * this.radius;
    this.mass = m;

    this.c = color(127);

    this.location = new PVector(x, y);
    this.velocity = new PVector(vx, vy);
    this.acceleration = new PVector(0, 0);
  }

  public void setColor(color c) {
    this.c = c;
  }

  //2da ley de Newton
  public void applyForce(PVector force) {
    PVector a = PVector.div(force, this.mass);
    this.acceleration.add(a);
  }

  public PVector attrack(Square other) {
    //Direccion de la fuerza.
    PVector force = PVector.sub(this.location, other.location);
    float d = force.mag();

    d = constrain(d, 5, 30);

    force.normalize();

    //Magnitud de la fuerza.
    float strength = (G*this.mass*other.mass)/(d*d);

    //Magnitud y direccion juntas.
    force.mult(strength);

    return force;
  }

  public void update() {

    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
    this.acceleration.mult(0);
  }

  public void display() {
    stroke(0);
    fill(this.c);
    ellipse(this.location.x, this.location.y, this.diameter, this.diameter);
  }
}
