PImage photo;
void setup() {
  size(800, 600);
  photo = loadImage("sorry.png");
}
color color1 = #FFFFFF;
color color2 = #AAAAAA;
color color3 = #444444;
color color4 = #000000;
color currentcolor = color1;
int circlescale = 200;
int PenMode = 1;
int stampmode = 0;
void draw() {
  noStroke();
  fill(color2);
  rect(0, 0, 200, 600);
  stroke(5);
  strokeWeight(5);
  fill(color1);
  tactile(125, 425);
  rect(100, 400, 50, 50);
  strokeWeight(5);
  fill(color2);
  tactile(125, 375);
  rect(100, 350, 50, 50);
  strokeWeight(5);
  fill(color3);
  tactile(75, 425);
  rect(50, 400, 50, 50);
  strokeWeight(5);
  fill(color4);
  tactile(125, 375);
  strokeWeight(5);
  rect(50, 350, 50, 50);
  line(25, 100, 25, 500);
  fill(currentcolor);
  circle(25, circlescale+100, 20);
  fill(color1);
  rect(50, 100, 100, 75);
  if (PenMode == 1) {
    circle(100, 140, 50);
  } else {
    rect(75, 120, 50, 40);
  }
  if (stampmode == 0) {
    fill(color2);
  }
  rect(50, 175, 100, 75);
  fill(color1);
  circle(100, 215, 50);
  rect(25, 25, 150, 50);
  rect(50, 475, 125, 50);
  rect(25, 525, 150, 50);
  fill(0, 0, 0);
  textSize(40);
  text("Clear", 55, 61);
  text("Save", 55, 561);
  text("Load", 75, 511);
}

void tactile(int buttonX, int buttonY) {
  if (buttonX-25<=mouseX & mouseX<=buttonX+25 & buttonY-25<=mouseY & mouseY<=buttonY+25) {
    strokeWeight(2);
  }
}

void mouseReleased() {
  //Stamp Buttons
  System.out.print(stampmode);
  if (50<=mouseX&&175<=mouseY && mouseX<=150 && mouseY<=250) {
    if (stampmode == 0){
      stampmode++;
    }else{
      stampmode=0;
    }
  }
  //stamp action
  if (stampmode!= 0) {
     image(photo,mouseX,mouseY);
  }
  //color
  if (50<=mouseX & mouseX<=100 & 400<=mouseY & mouseY<=450) {
    currentcolor = color3;
  } else if (100<=mouseX & mouseX<=150 & 350<=mouseY & mouseY<=400) {
    currentcolor = color2;
  } else if (100<=mouseX & mouseX<=150 & 400<=mouseY & mouseY<=450) {
    currentcolor = color1;
  } else if (50<=mouseX & mouseX<=100 & 350<=mouseY & mouseY<=400) {
    currentcolor = color4;
  }
  //Pen Button
  if (50<=mouseX&&100<=mouseY && mouseX<=150 && mouseY<=175) {
    PenMode++;
    if (PenMode == 3) {
      PenMode=1;
    }
  }
  //new button
  if (25<=mouseX && mouseX<=175 && 25<=mouseY && mouseY<= 75) {
    background(#CCCCCC);
  }
  //save button
  if (25<=mouseX && mouseX<=175 && 525<= mouseY && mouseY <= 575) {
    selectOutput("Choose a name", "saveImage");
  }
  //load button
  if (25<=mouseX && mouseX<=175 && 475<= mouseY && mouseY <= 525) {
    selectInput("Choose a file", "loadImage");
  }
}
void saveImage(File f) {
  print("test");
  if (f!= null) {
    PImage canvas = get(400, 0, width*2-400, height*2);
    canvas.save(f.getAbsolutePath());
  }
}
void loadImage(File f) {
  if (f != null) {
    int n = 0;
    //load image
    while (n<10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n++;
    }
  }
}
void mouseDragged() {
  //slider
  fill(currentcolor);
  if (stampmode==0) {
    if (PenMode == 1) {
      strokeWeight(circlescale/5);
      stroke(currentcolor);
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (PenMode == 2) {
      fill(currentcolor);
      strokeWeight(0);
      stroke(currentcolor);
      rect(mouseX-circlescale/10, mouseY-circlescale/10, circlescale/5, circlescale/5);
    }
  }

  if (mouseX > 0 && mouseX < 50 && mouseY > 100 && mouseY < 500) {
    circlescale = mouseY-100;
  }
  stroke(0);
}
