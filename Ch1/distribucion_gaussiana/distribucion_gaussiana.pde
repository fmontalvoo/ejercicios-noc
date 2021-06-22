import java.util.Random;

float heights[];

Random generador;

float sd = 10;
float avg = 100;

void setup() {
  size(640, 320, P2D);
  frameRate(5);
  heights = new float[10];
  generador = new Random();
}

void draw() {
  background(255);
  fill(200);
  stroke(0);

  for (int x = 0; x < width; x+=64) {
    float h = (float)generador.nextGaussian();
    h = h * sd;
    h = h + avg;
    
    //ellipse(width/2, height/2, h, h);
    
    heights[x/64] = h;
    rect(x, height, 64, -heights[x/64]);
  }
  
  strokeWeight(1);
  
  stroke(255,0,0);
  line(0, (height-(avg+sd)), width, (height-(avg+sd)));
  
  stroke(0,255,0);
  line(0, (height-avg), width, (height-avg));
  
  stroke(0,0,255);
  line(0, (height-(avg-sd)), width, (height-(avg-sd)));
}
