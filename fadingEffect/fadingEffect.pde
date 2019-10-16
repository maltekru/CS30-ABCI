

void setup() {
  size(600, 600);
  
  background(0);
}

void draw() {
  //background(0);
  
  fill(0, 80);
  rect(0, 0, width, height);
  
  fill(255);
  for(float x = 0; x < mouseX; x += mouseX / 15) {
    ellipse(x, mouseY, mouseX / 15, mouseX / 15);
  }
  
}