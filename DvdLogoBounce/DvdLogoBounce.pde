PImage dvd;
int posX = 200, posY = 100, dirX = 2, dirY = 2;
int hue = 100;
final int imgW = 180, imgH = 85;
boolean changeTint = false;

//Executed once (on startup)
void setup(){
  //Defining window size
  size(1280,720);
  //fullScreen();
  smooth();
  dvd = loadImage("dvd.png");
  colorMode(HSB, 100);
  println("Window created");
}

void draw(){
  background(0);
  
  image(dvd, posX, posY);
  
  if((posX + imgW) >= width || posX <= 0){
    dirX *= -1;
    changeTint = true;
  }
    
    
  if((posY + imgH) >= height || posY <= 0){
    dirY *= -1;
    changeTint = true;
  }
    
  if(changeTint){
    hue = (int)random(100);
    tint(hue,100,100);
    changeTint = false;
  }
  
  //Changing X and Y of the logo
  posX += dirX; 
  posY += dirY;
}
