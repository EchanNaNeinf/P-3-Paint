void setup(){
  size(400,400);
}
color color1 = #FFFFFF;
color color2 = #AAAAAA;
color color3 = #444444;
color currentcolor = color1;
int circlescale = 200;
void draw(){
  background(255);
  strokeWeight(5);
  fill(color1);
  tactile(200,350);
  rect(175,325,50,50);
  strokeWeight(5);
  fill(color2);
  tactile(75,350);
  rect(50,325,50,50);
  strokeWeight(5);
  fill(color3);
  tactile(325,350);
  rect(300,325,50,50);
  strokeWeight(5);
  fill(currentcolor);
  circle(250,200,circlescale);
  line(75,100,75,300);
  fill(color1);
  tactile(75,circlescale+100);
  circle(75,circlescale+100,20);
}
void tactile(int buttonX,int buttonY){
  if(buttonX-25<=mouseX & mouseX<=buttonX+25 & buttonY-25<=mouseY & mouseY<=buttonY+75){
    strokeWeight(2);
  }
}
void mouseReleased(){
  //color 
  if (300<=mouseX & mouseX<=350 & 325<=mouseY & mouseY<=375){
    currentcolor = color3;
  }else if(50<=mouseX & mouseX<=100 & 325<=mouseY & mouseY<=375){
    currentcolor = color2;
  }else if(175<=mouseX & mouseX<=225 & 325<=mouseY & mouseY<=375){
    currentcolor = color1;
  }

}
void mouseDragged(){
 //slider
  if(mouseX > 50 && mouseX < 100 && mouseY > 100 && mouseY < 300){
    circlescale = mouseY-100;
  }  
}
