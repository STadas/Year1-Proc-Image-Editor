//Snapchat-like software

PImage img;
boolean textMode=false;
boolean drawMode=false;
boolean stickerMode=false;

void setup(){
  size(800, 600);
  img =loadImage("https://picsum.photos/800/600", "jpg");
  background(img);
}
void draw(){
  fill(0, 255, 0);
  noStroke();
  rect(width-60, 10, 50, 50);
  rect(width-60, 70, 50, 50);
  rect(width-60, 130, 50, 50);
  strokeWeight(50);
}
void mouseClicked(){
  //Text button
  if(mouseX>=width-60 && mouseX<=width-10 && mouseY<=60 && mouseY>=10){
    if(textMode==false){
      textMode=true;
    }
    else if(textMode){
      textMode=false;
    }
  }
  
  
  //Drawing button
  if(mouseX>=width-60 && mouseX<=width-10 && mouseY<=130 && mouseY>=70){
    if(drawMode==false){
      drawMode=true;
    }
    else if(drawMode){
      drawMode=false;
    }
  }
  if(drawMode){
    stroke(255, 0, 0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  //Sticker button
  if(mouseX>=width-60 && mouseX<=width-10 && mouseY<=190 && mouseY>=130){
    if(stickerMode==false){
      stickerMode=true;
    }
    else if(stickerMode){
      stickerMode=false;
    }
  }
  println(textMode);
  println(drawMode);
  println(stickerMode);
  println("");
}
