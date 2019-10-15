int pos = 0;

int tL = 255, tR = 255, bL = 255, bR = 255;

void setup() {
   size(600, 600);
}

void draw() {
  background(255);
  
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
      
      fill(tR);
      rect(width / 2, 0, width / 2, height / 2);
      
      fill(bL);
      rect(0, height / 2, width / 2, height / 2);
      
      fill(bR);
      rect(width / 2, height / 2, width / 2, height / 2);
      
      tL = 0;
    
      if(tR < 255) {
        tR += 5;
      }
      if(bL < 255) {
        bL += 5;
      }
      if(bR < 255) {
        bR += 5;
      }
      break;
    case 1:
      stroke(0);
      fill(0);
      rect(width / 2, 0, width / 2, height / 2);
      
      fill(tL);
      rect(0, 0, width /2, height / 2);
      fill(bL);
      rect(0, height / 2, width / 2, height / 2);
      
      fill(bR);
      rect(width / 2, height / 2, width / 2, height / 2);
      
      tR = 0;
    
      if(tL < 255) {
        tL += 5;
      }
      if(bL < 255) {
        bL += 5;
      }
      if(bR < 255) {
        bR += 5;
      }
      break;
    case 2:
      stroke(0);
      fill(0);
      rect(0, height / 2, width / 2, height / 2);
      
      fill(tL);
      rect(0, 0, width /2, height / 2);
      fill(tR);
      rect(width / 2, 0, width / 2, height / 2);
      fill(bR);
      rect(width / 2, height / 2, width / 2, height / 2);
      
      bL = 0;
    
      if(tL < 255) {
        tL += 5;
      }
      if(tR < 255) {
        tR += 5;
      }
      if(bR < 255) {
        bR += 5;
      }
      break;
    case 3:
      stroke(0);
      fill(0);
      rect(width / 2, height / 2, width / 2, height / 2);
      
      fill(tL);
      rect(0, 0, width /2, height / 2);
      fill(tR);
      rect(width / 2, 0, width / 2, height / 2);
      fill(bL);
      rect(0, height / 2, width / 2, height / 2);
      
      bR = 0;
    
      if(tL < 255) {
        tL += 5;
      }
      if(tR < 255) {
        tR += 5;
      }
      if(bL < 255) {
        bL += 5;
      }
      break;
  }
  
  stroke(0);
  noFill();
  rect(0, 0, width - 1, height - 1);
  
  line(0, height / 2, width, height / 2);
  line(width / 2, 0, width / 2, height);
}