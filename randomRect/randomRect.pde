void setup() {
  fullScreen(); 
}

void draw() {
  stroke(random(255), random(255), random(255), random(127, 255));
  fill(random(255), random(255), random(255), random(127, 255));
  strokeWeight(map(mouseX, 0, width, 1, 20));
  rect(random(width), random(height), random(width / 4), random(width / 4));
}