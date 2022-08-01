int radius = 100;

//Executed once (on startup)
void setup(){
  size(1280, 720, P3D);
  
}

//Executed after setup (continuously)
void draw(){
  noFill();
  lights();
  translate(500,500,50);
  camera(mouseX*1.3, mouseY*1.3, 10,
          0.0, 0.0, 0.0,
          0.0, 1.0, 0.0);
  
  background(100);
  sphere(radius);
}
