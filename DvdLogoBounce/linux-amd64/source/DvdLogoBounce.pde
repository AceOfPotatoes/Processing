PImage dvd;
int posX = 1, posY = 1, dirX = 2, dirY = 2;
int hue = 360;
final int imgW = 180, imgH = 85, winW = 1280, winH = 720;
boolean changeTint = false;

//Executed once (on startup)
void setup(){
  //Defining window size
  size(1280, 720);
  smooth(4);
  dvd = loadImage("dvd.png");
  colorMode(HSB, 360);
  println("Window created");
}

void draw(){
  background(0);
  
  image(dvd, posX, posY);
  
  if((posX + imgW) >= winW || posX <= 0){
    dirX *= -1;
    changeTint = true;
  }
    
    
  if((posY + imgH) >= winH || posY <= 0){
    dirY *= -1;
    changeTint = true;
  }
    
  if(changeTint){
    hue = (int)random(360);
    tint(hue,360,360);
    changeTint = false;
  }
  
  //Changing X and Y of the logo
  posX += dirX; 
  posY += dirY;
}
