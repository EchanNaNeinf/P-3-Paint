void setup(){
  size(400,400);
}
color color1 = #FFFFFF;
color color2 = #888888;
color color3 = #000000;
color currentcolor = color1;
void draw(){
  strokeWeight(5);
  fill(color1);
  if(300<=mouseX & mouseX<=350 & 25<=mouseY & mouseY<=75){
    strokeWeight(2);
  }
  rect(300,25,50,50);
  strokeWeight(5);
  fill(color2);
  if(50<=mouseX & mouseX<=100 & 175<=mouseY & mouseY<=225){
    strokeWeight(2);
  }
  rect(50,175,50,50);
  strokeWeight(5);
  fill(color3);
  if(300<=mouseX & mouseX<=350 & 325<=mouseY & mouseY<=375){
    strokeWeight(2);
  }
  rect(300,325,50,50);
  strokeWeight(5);
  fill(currentcolor);
  circle(250,200,200);
  
}

void mouseReleased(){
  if (300<=mouseX & mouseX<=350 & 325<=mouseY & mouseY<=375){
    currentcolor = color3;
  }else if(50<=mouseX & mouseX<=100 & 175<=mouseY & mouseY<=225){
    currentcolor = color2;
  }else if(300<=mouseX & mouseX<=350 & 25<=mouseY & mouseY<=75){
    currentcolor = color1;
  }
  
}
