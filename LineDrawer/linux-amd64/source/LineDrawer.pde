int hue = 359;
int direction = -1;
boolean redDone = false, greenDone = false, blueDone = false;

void setup(){
  //Window size
  size(1280, 720);
  
  //Background color setup
  background(12);
  
  //Draw lines with anti-aliasing
  smooth();
  
  //Console print
  println("Window created");
  
  colorMode(HSB, 360);
}

void draw(){
  //Stroke color setup
  stroke(hue, 360, 360);
  
    
  //Checking whether mouse's left button is pressed 
  if(mousePressed){
    hue += direction;
    if(hue == 0 || hue >= 359)
      direction *= -1;
    println("hue = " + hue);
    
    //draw line
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
