float rotation = 0, zPos;

void setup(){
  fullScreen(P3D);
  noFill();
  stroke(255);
  smooth(4);
}

void draw(){
  lights();
  translate(mouseX, mouseY, zPos); 
  background(16);
  rotateY(rotation);
  rotation += 0.05;
  box(400);
}

void mousePressed(){
  if(mouseButton == LEFT)
  { fill(255); noStroke(); }
    
  else if(mouseButton == RIGHT)
  { noFill(); stroke(255); }
}

void mouseWheel(MouseEvent event) {
  // getCount() > 0 if moved backwards (towards the user), < 0 if moved forward (in the other direction) 
  float e = event.getCount();
  if(e > 0)
    zPos -= 20;
  else if (e < 0)
    zPos += 20;
}
