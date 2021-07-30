import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

ArrayList<Box> boxes;

Box2DProcessing box2d;

void setup(){
  size(640, 320);
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  boxes = new ArrayList<Box>();
}

void draw(){
  
  box2d.step();
  
  background(255);
  for(Box box : boxes){
    box.display();
  }
  
  if(mousePressed){
    boxes.add(new Box(mouseX, mouseY));
  }
}

//void mousePressed(){
//  boxes.add(new Box(mouseX, mouseY));
//}
