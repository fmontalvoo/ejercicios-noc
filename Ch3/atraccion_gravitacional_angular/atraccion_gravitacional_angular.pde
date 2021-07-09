Circle b;

Square squares[];

void setup() {
  size(720, 480);
  background(255);
  b = new Circle(width/2, height/2, 10, 20, 0, 0);
  b.setColor(color(0));

  squares = new Square[4];
  for (int i = 0; i < squares.length; i++) {
    squares[i]  = new Square((width/4) * i, height*0.2, random(10, 20), random(1, 10), 1, 0);
    float r = random(255);
    float g = random(255);
    float b = random(255);
    squares[i].setColor(color(r, g, b));
  }
}

void draw() {
  //background(255);
  b.display();

  for (Square s : squares) {
    PVector attraction = b.attrack(s);

    s.display();
    s.applyForce(attraction);
    s.update();
  }
}
