PVector origin;
Circle circle;
float restLength;

float k = 0.01;


void setup() {
  size(640, 320);
  restLength = height * 0.5;
  origin = new PVector(width/2, 0);
  circle = new Circle(width/2, restLength+50);
}

void draw() {
  background(255);

  line(origin.x, origin.y, circle.location.x, circle.location.y);

  PVector spring = PVector.sub(circle.location, origin);
  float currentLength = spring.mag();
  spring.normalize();
  float stretch = currentLength - restLength;
  spring.mult(-k * stretch);

  circle.applyForce(spring);

  PVector gravity = new PVector(0, 0.1);
  circle.applyForce(gravity);
  
  if(mousePressed){
    PVector wind = new PVector(0.05, 0);
    circle.applyForce(wind);
  }

  circle.display();
  circle.update();
}
