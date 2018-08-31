void cardscan() {
  imageMode(CORNER);

  video.read();
  nya.detect(video);
  background(0);
  nya.drawBackground(video);
  //image(video, 0, 0 );

  noStroke();
  fill(0, 0, 0, 80); 
  //rect(0,0,width,height);
  rect(0, 0, width, height/4);
  rect(0, height/4, width/3*1.15, height/4*2);
  rect(width/3*1.85, height/4, width/3*1.15, height/4*2);
  rect(0, height/4*3, width, height);
  textFont(face_dect);
  fill(10, 189, 198);
  textAlign(CENTER, CENTER);
  text("UTS Archives", width/2, height/8-30);
  text("ID authentication", width/2, height/8);

  if (facedisplay>=5&&cancel.isPlaying()==false&&frameCount%50==0) {
    act=7;
    //redraw();
  }




  for (int i=0; i<1; i++) {

    if ((!nya.isExist(i))) {

      c=color(255, 255, 25);
      text("scan", width/2, height/2-30);
      text("your", width/2, height/2);
      text("ID", width/2, height/2+30);
      text("here", width/2, height/2+60);

      text("scan", width/2, height/2-30+random(-1, 1));
      text("your", width/2, height/2+random(-1, 1));
      text("ID", width/2, height/2+30+random(-1, 1));
      text("here", width/2, height/2+60+random(-1, 1));
      println("no exist");
      facedisplay=0;
      continue;
    }
    println(i+" exist");

    if (nya.isExist(0))
      nya.beginTransform(i);
    noFill();
    //translate(-80, 55, 20);
    drawani();
    nya.endTransform();
    faceoncard();
    if (frameCount%20==0) {
      switch(facedisplay) {
      case 0:
        facedisplay=1;
        break;

      case 1:
        facedisplay=2;
        break;

      case 2:
        facedisplay=3;
        break;

      case 3:
        facedisplay=4;
        break;
      case 4:
        facedisplay=5;
        break;
      }
    }
    if (facedisplay>=1) {
      fill(255, 255, 255);
      textAlign(CENTER, CENTER);
      text("Checking the certificate in the database", width/2, height/8*7-30);
      text("please wait ("+facedisplay+"/5)", width/2, height/8*7);
      textAlign(LEFT, CENTER);

      text("IN DATABASE:", 450, 130);
      //imageMode(CENTER);
      PImage faceone = loadImage("face1.jpg");
      processedImage = Stacker.apply(Stacker.ALGORITHM.AVERAGE, faceone);
      textSize(30);
      image(processedImage, 450, 150);
      if (facedisplay>=2) {
        PImage facetwo = loadImage("face2.jpg");
        processedImage = Stacker.apply(Stacker.ALGORITHM.AVERAGE, faceone, facetwo);
        image(processedImage, 450, 150);
        if (facedisplay>=3) {
          PImage facethree = loadImage("face3.jpg");
          processedImage = Stacker.apply(Stacker.ALGORITHM.AVERAGE, faceone, facetwo, facethree);
          image(processedImage, 450, 150);
          if (facedisplay>=4) {
            PImage facefour = loadImage("face4.jpg");
            processedImage = Stacker.apply(Stacker.ALGORITHM.AVERAGE, faceone, facetwo, facethree, facefour);
            image(processedImage, 450, 150);
          }
        }
      }
      println(mouseX+","+mouseY);
      if (facedisplay>=5) {
        noStroke();
        fill(255, 255, 0, 80);   
        rect(0, height/5, width, height/5*1);  
        imageMode(CENTER);
        image(important, width/5, height/5*2-50, 80, 80);
        fill(255, 0, 0);
        textFont(p1);
        text("Successful authentication, no effective permissions", width/4, height/5-10, width/4*2, height/5*1);
        if(cancel.isPlaying()==false){  
        cancel.rewind();        
        cancel.play();}
      }
    }
  }
}

void faceoncard() {



  pm=nya.pickupRectImage(0, 43, 10, 45, 45, 100, 100);
  pm_id=nya.pickupRectImage(0, 42, 70, 45, 10, 100, 22);
  time = millis();
  textAlign(LEFT, CENTER);

  textSize(25);
  fill(255, 255, 255);
  text("Face on card", 46, 128); 
  image(pm, 50, 140);
  text("Student ID", 50, 248); 

  image(pm_id, 50, 260);
  pm_id.filter(GRAY);
}
