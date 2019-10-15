int pos = 0;

void setup() {
   size(400, 400);
}

void draw() {
  background(255);
  stroke(0);
  fill(255);
  rect(0, 0, width - 1, height - 1);
  
  line(0, height / 2, width, height / 2);
  line(width / 2, 0, width / 2, height);
  
  if(mouseX > 0 && mouseY > 0 && mouseX < width / 2 && mouseY < height / 2) {
    pos = 0;
  }
  else if(mouseX > width / 2 && mouseY > 0 && mouseX < width && mouseY < height / 2) {
    pos = 1;
  }
  else if(mouseX > 0 && mouseY > height / 2 && mouseX < width / 2 && mouseY < height) {
    pos = 2;
  }
  else if(mouseX > width / 2 && mouseY > height / 2 && mouseX < width && mouseY < height) {
    pos = 3;
  }
  
  switch(pos) {
    case 0:
      stroke(0);
      fill(0);
      rect(0, 0, width /2, height / 2);
      break;
    case 1:
      stroke(0);
      fill(0);
      rect(width / 2, 0, width / 2, height / 2);
      break;
    case 2:
      stroke(0);
      fill(0);
      rect(0, height / 2, width / 2, height / 2);
      break;
    case 3:
      stroke(0);
      fill(0);
      rect(width / 2, height / 2, width / 2, height / 2);
      break;
  }
}