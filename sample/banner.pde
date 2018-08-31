void banner(String name, String txt) {
  if (notice==false) {
    if (name=="facedetect") {
      facedect.rewind();        
      facedect.play();
    }
    if (name=="error") {
      error.rewind();        
      error.play();
    }  

    notice=true;
  } 



  if (facedect.isPlaying()==true||error.isPlaying()==true) {
    noStroke();
    fill(19, 24, 51, 100);   
    rect(0, height/6, width, height/6*4);
    fill(10, 189, 198);
    textFont(p1);
    text(txt, width/8, height/4*2, width/8*6, height/4*1);
    imageMode(CENTER);
    image(important, width/2, height/2-40, 80, 80);
  }

  if (notice==true) {
    if (facedect.isPlaying()==false&&error.isPlaying()==false) {
      act++;
      notice=false;
    }
  }
}
