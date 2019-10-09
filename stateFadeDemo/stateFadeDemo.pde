boolean left = true;

int lFill = 0;

void setup() {
  size(200, 200); 
}

void draw() {
  background(255);
  stroke(0);
  //line(width / 2, 0, width / 2, height);
  
  if(mouseX < width / 2) {
    left = true;
    lFill = 0;
  }
  else {
    left = false;
    lFill += 5;
  }
  
  if(left) {
    stroke(0);
    fill(0);
    rect(0, 0, width / 2, height);
    fill(255);
    rect(width / 2, 0, width / 2 - 1, height - 1);
  }
  else {
    stroke(0);
    fill(0);
    rect(width / 2, 0, width / 2, height);
    fill(255);
    rect(0, 0, width / 2, height - 1);
  }
}