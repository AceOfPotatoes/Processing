float angle;

void setup(){
  size(1280,720);
  smooth();
}

void draw() { 
  stroke(255);
  background(16);
  translate(width/2, height); 
  angle = radians((mouseX / (float) width) * 90f);
  float l = (height - mouseY) / 2.9;
  branch(l); 
}

void branch(float len){
  line(0, 0, 0, -len);
  translate(0, -len);
  if(len > 2){
    push();
    rotate(-angle);
    branch(len*0.67);
    pop();
    rotate(angle);
    branch(len*0.67);  
  } 
}
