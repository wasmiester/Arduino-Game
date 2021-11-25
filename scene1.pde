//this is the main game scene

void scene1(){
drawBackground();
drawPlatform();
drawPlayer();
movePlayer();
jumpPlayer();


}
  void drawBackground(){
  background(loadImage("background_0.png"));
  }

  void drawPlayer(){
  image(loadImage("gameTile_15.png"),x,y);  
  }
  
  void drawPlatform(){
     PImage tile13 = loadImage("gameTile_13.png"); 
  for(int col=0;col<6;col++)
    image(tile13,col*W,7*H);  
  image(loadImage("gameTile_14.png"),6*W,7*H);
  }
  
  void movePlayer(){
  x += speedX;
  y += speedY;
  }
  
  void jumpPlayer(){
     if(isJumping){
    y= y + speedY;
    speedY = speedY + gravity;
    if(y >= 6*H){
      speedY = 0;
      isJumping = false;
      y = 6*H;
    }
    }
  }
