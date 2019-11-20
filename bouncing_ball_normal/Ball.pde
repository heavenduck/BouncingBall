class Ball{

  float xpos ;
  float ypos ;
  float velocity = 0; 
  float gravity = 0.98;
  int diameter = 30;
  boolean dead = false;      // stops the calculation when the ball moves only sparsely
  
  Ball(){
    xpos = mouseX;
    ypos = mouseY; 
  }
  
  void drawElements(){
    moveBall();
    circle(xpos, ypos, diameter);
  }
   
  void moveBall(){
    if(!dead){                //check if the ball is not dead yet
      velocity += gravity;    //add every frame the gravity to the speed --> simulate a accelerated drop
      ypos += velocity;       //add the new velocity to the position of the ball
      
      if(ypos > height - diameter/2){        //check if the ball is beneath the limit --> out of the frame
        ypos = height - diameter/2;          //set the ball to the lowes limit --> avoid a glitch of the ball when he is to low 
        velocity = velocity - gravity;       //decrease the speed about the gravity --> doen't jump back as high as befor 
        velocity *= -1;                      // change direction of the ball, when it hits the ground
        if(velocity < 1 && velocity > -1){   //if the speed of the ball is below a specific limit the ball does not move anymore --> don't waste any capacity 
           dead = true;
           print("dead");
        }
      }
    }
  }
}
