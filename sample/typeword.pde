void typ(String name, String x, int y, int z) {

  if(name=="end"&&chat[y][z-1]==true){
  act++;
  proc=true;
  }
  
else if (z<17) {
    if (name=="nico:") {
      textFont(f2);
      textAlign(LEFT, BOTTOM);
      textSize(25);
      fill(0, 100, 0);

      if (chat[y][z]==false&&chat[y][z-1]==true&&ty==true) {
        fill(0, 50, 0);

        text(name, 30, 60+z*22);
        if (pt<=x.length()) {
          String tp=x.substring(0, pt);
          delay(int(random(0, 3))*10);
          typeletter(tp, z, name);
          pt++;
        } else {
          delay(int(random(0, 10))*100);
          beep.rewind();
          beep.play();
          chat[y][z]=true;
          pt=0;
        }
      } else if (chat[y][z]==true&&z>0) {
        fill(0, 100, 0);
        text(x, 30+50, 60+22*z);
        fill(0, 50, 0);
        text(name, 30, 60+z*22);
      }
    }

    if (name==":Shonen Batto") {
      textFont(f2);
      textAlign(RIGHT, BOTTOM);
      textSize(25);



      if (chat[y][z]==false&&chat[y][z-1]==true&&ty==true) {
        // text(name, 620, 60+z*20);
        if (pt<=x.length()) {
          String tp=x.substring(0, pt);
          delay(int(random(0, 12))*10);
          typeletter(tp, z, name);
          pt++;
        } else {
          delay(int(random(0, 10))*100);
          send.rewind();
          send.play();
          chat[y][z]=true;
          pt=0;
        }
      } else if (chat[y][z]==true&&z>0) {
        fill(0, 100, 0);
        text(x, 460, 60+z*22);
        fill(0, 50, 0);
        text(name, 610, 60+z*22);
      }
    }
  }
  if (z>=17&&chat[y][z-1]==true){
  order--;
  }
}

void typeletter(String x, int y,String name) {
 if (name=="nico:") {
  //tap.rewind();
  //tap.play();
    fill(0, 100, 0);

  text(x+"...", 30+50, 60+22*y);}
  
   if (name==":Shonen Batto") {
  tap.rewind();
  tap.play();
    textAlign(LEFT, BOTTOM);
  fill(0, 100, 0);
  text(x+"...", 30, 450);}
  
  
  
}
