

void setup() {
  size(400, 400);
  frameRate(60);
}

void draw() {
  //background(255);
  
  //if(frameCount % 60 == 0) {
  //  fill(255, 0, 0);
  //}
  //else if(frameCount % 60 == 30) {
  //  fill(0, 255, 0);
  //}
  //else {
  //  fill(255);
  //}
  
  if(frameCount % 30 == 0) {
    fill(255, 0, 0);
    ellipse(random(width), random(height), 10, 10);
  }
  else if(frameCount % 6 == 0) {
    fill(0, 255, 0);
    ellipse(random(width), random(height), 20, 20);
  }
  else if(frameCount % 2 == 0) {
    fill(0, 0, 255);
    ellipse(random(width), random(height), 30, 30);
  }
}