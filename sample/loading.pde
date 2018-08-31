void loading(){
if(proc==false&&finish.isPlaying()==false){
  act++;
}
  
else if (proc==true) {
    background(9, 24, 51);
    textSize(30);
    fill(10, 189, 198);
   textAlign(LEFT, CENTER);
  textFont(title);
    text("loading...", 155, height/2-80);
    drawbar();
    drawblock();
  }
}

void drawbar() {
  fill(10, 189, 198);
  noStroke();
  rect(160, height/2-40, 335, 30);//Bar Shadow

  fill(255);
  stroke(0);
  strokeWeight(6);
  strokeJoin(BEVEL);
  rect(155, height/2-50, 330, 30);//Bar Outline

}

void drawblock() {


  fill(234, 0, 217);
  stroke(255);
  strokeWeight(3);

  for (int x = 160; x<=endX; x = x + 20) {


    rect(x, height/2-45, 20, 20);
  }

  if (millis() - delay>100&&proc==true) {

    endX = endX + 20;
    delay = millis(); 

    //creates a delay in the loop of drawing the progress bar
  }

  if (endX>=40&&endX%20==0) {
    //block.rewind();        
    //block.play();
  }

  if (endX>=470) { 
    endX = 20;
    finish.rewind();        
    finish.play();
    proc=false;
        endX = 20;

  }
}
