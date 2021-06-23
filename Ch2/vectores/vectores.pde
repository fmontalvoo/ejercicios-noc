int cx, cy;

void setup() {
  size(640, 320);
  cx = int(width/2);
  cy = int(height/2);
}

void draw() {
  background(255);

  stroke(0);

  strokeWeight(1);
  line(0, 0, mouseX, mouseY);
  line(0, 0, cx, cy);


  strokeWeight(3);
  noFill();

  translate(cx, cy);
  ellipse(0, 0, 7, 7);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(cx, cy);

  fill(0);
  textSize(16);
  text("("+cx+","+cy+")", 0, 0);

  println((mouse.x - center.x) +", "+ (mouse.y - center.y));

  //mouse.add(center); // Suma el vector center al vector mouse.
  mouse.sub(center); // Resta el vector center del vector mouse.
  mouse.mult(1); // Cambia la escala del vector.

  //float m = mouse.mag(); // Devuelve la magnitud del vector.
  //fill(0, 255, 0);
  //rect(0, 0, m, 10);

  //mouse.normalize(); // Cambia la magnitud del vector a 1.

  fill(0);
  text("("+mouseX+","+mouseY+")", mouse.x, mouse.y);

  line(0, 0, mouse.x, mouse.y);
}
