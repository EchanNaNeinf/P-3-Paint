void setup(){
  size(800,600);
}
color color1 = #FFFFFF;
color color2 = #AAAAAA;
color color3 = #444444;
color color4 = #000000;
color currentcolor = color1;
int circlescale = 200;
void draw(){
  noStroke();
  fill(color2);
  rect(0,0,200,600);
  stroke(5);
  strokeWeight(5);
  fill(color1);
  tactile(125,425);
  rect(100,400,50,50);
  strokeWeight(5);
  fill(color2);
  tactile(125,325);
  rect(100,300,50,50);
  strokeWeight(5);
  fill(color3);
  tactile(125,225);
  rect(100,200,50,50);
  strokeWeight(5);
  fill(color4);
  tactile(125,125);
  strokeWeight(5);
  rect(100,100,50,50);
  fill(currentcolor);
  line(25,100,25,500);
  circle(25,circlescale+100,20);
}

void tactile(int buttonX,int buttonY){
  if(buttonX-25<=mouseX & mouseX<=buttonX+25 & buttonY-25<=mouseY & mouseY<=buttonY+75){
    strokeWeight(2);
  }
}

void mouseReleased(){
  //color 
  if (100<=mouseX & mouseX<=150 & 200<=mouseY & mouseY<=250){
    currentcolor = color3;
  }else if(100<=mouseX & mouseX<=150 & 300<=mouseY & mouseY<=350){
    currentcolor = color2;
  }else if(100<=mouseX & mouseX<=150 & 400<=mouseY & mouseY<=450){
    currentcolor = color1;
  }else if(100<=mouseX & mouseX<=150 & 100<=mouseY & mouseY<=150){
    currentcolor = color4;
  }
  
}
void mouseDragged(){
 //slider
 fill(currentcolor);
 noStroke();
  circle(mouseX,mouseY,circlescale/2);
  if(mouseX > 0 && mouseX < 50 && mouseY > 100 && mouseY < 500){
    circlescale = mouseY-100;
  }  
}
