boolean tLClick = false;
boolean bRClick = false;

int pos = 0;

int a = 255, b = 255, c = 255, d = 255;

int[] tL = {0, 0, 200};
int[] tR = {200, 0, 200};
int[] bL = {0, 170, 170};
int[] bR = {50, 200, 0};

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
      bRClick = false;
    
      if(!tLClick) {
        a = 255;
        
        stroke(0);
        fill(tL[0], tL[1], tL[2]);
        rect(0, 0, width /2, height / 2);
        
        fill(tR[0], tR[1], tR[2], b);
        rect(width / 2, 0, width / 2, height / 2);
        
        fill(bL[0], bL[1], bL[2], c);
        rect(0, height / 2, width / 2, height / 2);
        
        fill(bR[0], bR[1], bR[2], d);
        rect(width / 2, height / 2, width / 2, height / 2);
        
        tL[0] = 0;
        tL[1] = 0;
        tL[2] = 200;
      
        if(b > 0) {
          b -= 10;
        }
        if(c > 0) {
          c -= 10;
        }
        if(d > 0) {
          d -= 10;
        }
      }
      else if(tLClick) {
        a = 255;
        
        stroke(0);
        fill(tL[0], tL[1], tL[2]);
        rect(0, 0, width /2, height / 2);
        
        fill(tR[0], tR[1], tR[2]);
        rect(width / 2, 0, width / 2, height / 2);
        
        fill(bL[0], bL[1], bL[2]);
        rect(0, height / 2, width / 2, height / 2);
        
        fill(bR[0], bR[1], bR[2]);
        rect(width / 2, height / 2, width / 2, height / 2);
      }
      break;
    case 1:
      bRClick = false;
      tLClick = false;
    
      b = 255;
      
      stroke(0);
      fill(tR[0], tR[1], tR[2]);
      rect(width / 2, 0, width / 2, height / 2);
      
      fill(tL[0], tL[1], tL[2], a);
      rect(0, 0, width /2, height / 2);
      fill(bL[0], bL[1], bL[2], c);
      rect(0, height / 2, width / 2, height / 2);
      fill(bR[0], bR[1], bR[2], d);
      rect(width / 2, height / 2, width / 2, height / 2);
      
      tR[0] = 200;
      tR[1] = 0;
      tR[2] = 200;
    
      if(a > 0) {
        a -= 10;
      }
      if(c > 0) {
        c -= 10;
      }
      if(d > 0) {
        d -= 10;
      }
      break;
    case 2:
      bRClick = false;
      tLClick = false;
      
      c = 255;
      stroke(0);
      fill(bL[0], bL[1], bL[2]);
      rect(0, height / 2, width / 2, height / 2);
      
      fill(tL[0], tL[1], tL[2], a);
      rect(0, 0, width /2, height / 2);
      fill(tR[0], tR[1], tR[2], b);
      rect(width / 2, 0, width / 2, height / 2);
      fill(bR[0], bR[1], bR[2], d);
      rect(width / 2, height / 2, width / 2, height / 2);
      
      bL[0] = 0;
      bL[1] = 170;
      bL[2] = 170;
    
      if(a > 0) {
        a -= 10;
      }
      if(b > 0) {
        b -= 10;
      }
      if(d > 0) {
        d -= 10;
      }
      break;
    case 3:
      tLClick = false;
      if(!bRClick) {
        d = 255;
        
        stroke(0);
        fill(bR[0], bR[1], bR[2]);
        rect(width / 2, height / 2, width / 2, height / 2);
      }
      else if(bRClick) {
        stroke(0);
        fill(255);
        rect(width / 2, height / 2, width / 2, height / 2);
        
        d = 0;
      }
      
      fill(tL[0], tL[1], tL[2], a);
      rect(0, 0, width /2, height / 2);
      fill(tR[0], tL[1], tL[2], b);
      rect(width / 2, 0, width / 2, height / 2);
      fill(bL[0], bL[1], bL[2], c);
      rect(0, height / 2, width / 2, height / 2);
      
      bR[0] = 50;
      bR[1] = 200;
      bR[2] = 0;
    
      if(a > 0) {
        a -= 10;
      }
      if(b > 0) {
        b -= 10;
      }
      if(c > 0) {
        c -= 10;
      }
      break;
  }
  
  stroke(0);
  noFill();
  rect(0, 0, width - 1, height - 1);
  
  line(0, height / 2, width, height / 2);
  line(width / 2, 0, width / 2, height);
}

void mouseClicked() {
  if(pos == 1) {
    tLClick = true;
  }
  else if(pos == 3) {
    bRClick = !bRClick;
  }
}