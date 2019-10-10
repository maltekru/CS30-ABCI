int x = 0;
int y = 0;
int state = 2; // 0-right 1-down 2-left 3-up

void setup() {
  size(200, 200); 
}

void draw() {
  background(255);
  
  fill(0);
  stroke(0);
  
  if(x < width - width / 8 && y <= 0) {
    state = 0;
  }
  else if(x >= width - width / 8 && y <= height - width / 8) {
    state = 1;
  }
  else if(x >= width - width / 8 && y >= height - width / 8) {
    state = 2;  
  }
  else if(x <= 0 && y > 0) {
    state = 3;
  }
  
  if(state == 0) {
    x += 2;
  }
  else if(state == 1) {
    y += 2;
  }
  else if(state == 2) {
    x -= 2;
  }
  else if(state == 3) {
    y -= 2;
  }
  
  rect(x, y, width / 8, width / 8);
}