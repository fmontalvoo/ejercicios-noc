float t = 0;

void setup(){
  size(640, 320);
}

void draw(){
  background(0);
  float x = noise(t);
  x = map(x, 0, 1, 0, width);
  ellipse(x, height/2, 25, 25);
  t += 0.01;
}
