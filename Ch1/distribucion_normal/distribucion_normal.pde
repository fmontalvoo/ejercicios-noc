float heights[];

void setup(){
  size(640, 320);
  frameRate(5);
  heights = new float[10];
}

void draw(){
  background(255);
  fill(200);
   
  int index = int(random(heights.length));
  heights[index]+=2;
  
  for(int x = 0; x < width; x+=64){
    rect(x, height, 64, -heights[x/64]);
  }

}
