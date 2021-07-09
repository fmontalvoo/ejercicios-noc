float angle = 0.0;
float aVelocity = 0.0;
float aAcceleration = 0.01;

void setup() {
  size(640, 320);
}

void draw() {
  background(255);

  aAcceleration = map(mouseX, 0, width, -0.01, 0.01);

  angle += aVelocity;
  aVelocity += aAcceleration;
  println("Angulo: " + angle);

  stroke(0);
  fill(127);
  rectMode(CENTER);
  translate(width/2, height/2);

  rotate(angle);
  rect(0, 0, 64, 32);
}
