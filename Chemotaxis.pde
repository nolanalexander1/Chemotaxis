Bacteria [] colony;
double xChange = 0;
double yChange = 0;
void setup()   
{     
  size(500,500);
  background(255);
  colony = new Bacteria[500];
  for(int i = 0; i < colony.length; i++){
    colony[i] = new Bacteria(250,250);
  }
}   
void draw()   
{ 
  for(int i = 0; i < colony.length; i++){
    colony[i].move();
    colony[i].show(); 
  }
}  

class Bacteria    
{     
  double myX, myY;
  int myColor;
  Bacteria(double x, double y){
    myX = x;
    myY = y;
    myColor = color(((int)(Math.random()*255)), 0, 0);
  }
  void move(){
    xChange = (mouseX - myX) / 100; 
    yChange = (mouseY - myY) / 100; 
    myX = myX + (int)(Math.random()*9)-4 + xChange;
    myY = myY + (int)(Math.random()*9)-4 + yChange;
  }
  void show(){
    fill(myColor);
    stroke(0);
    ellipse((int)myX,(int)myY,5,5);
  }
}    