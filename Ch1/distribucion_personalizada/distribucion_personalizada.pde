float[] vals, norms;

void setup() {
  size(640, 320);
  vals = new float[width];
  norms = new float[width];
}

void draw() {
  background(127);

  float n = montecarlo();

  int index = int(n * width);
  vals[index]++;
  stroke(255);

  boolean normalization = false;
  float maxy = 0.0;
  
  for(int x = 0; x < vals.length; x++){
    line(x, height, x, height-norms[x]);
    if(vals[x] > height) normalization = true;
    if(vals[x] > maxy) maxy = vals[x];
  }
  
  for(int x = 0; x < vals.length; x++){
    if(normalization) norms[x] = (vals[x] / maxy) * height;
    else norms[x] = vals[x];
  } 
  
}

float montecarlo() {
  boolean found = false;
  int count = 0;

  while (!found && count < 10000) {
    float r1 = random(1);
    float r2 = random(1);
    float y = r1 * r1;
    println("R1: "+r1+" R2: "+r2+" Y: "+y);
    if (r2 < y) {
      found = true;
      return r1;
    }

    count ++;
  }

  return 0;
}
