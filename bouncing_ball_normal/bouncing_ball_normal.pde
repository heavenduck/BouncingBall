ArrayList<Ball> ballSet = new ArrayList<Ball>(); //Arrayliste which containts all balls
int maxBalls = 9;

void setup(){
  size(800 ,700);
  smooth();  
  noStroke();
 }
  
void draw()
{
  background(0);     // reset the background every Frame
    for (Ball ball : ballSet){  
      ball.drawElements();          
    }  
}

void mousePressed(){
 if(ballSet.size() <= maxBalls){      // max 9 balls
   ballSet.add(new Ball());
 }
 
}
