void welcome() {
  if (speaker==false&&frameCount%100==0) {
    wcb.play();
    speaker=true;
  }
else if(speaker==true&&wcb.isPlaying()==false){
    act++;

}

  background(9, 24, 51); 
  textFont(title);
  fill(10, 189, 198);
  textAlign(LEFT, TOP);
  text("niverse", width/2-160, height/2.95);
  text("elegram", width/2-160, height/2);
  text("ystem", width/2-160, height/1.55);
  fill(113, 28, 145);
  text("niverse", width/2+-165, height/2.95+random(-1, 5)*0.4);
  text("elegram", width/2+-165, height/2+random(-1, 5)*0.4);
  text("ystem", width/2+-165, height/1.55+random(-1, 5)*0.4);

  textSize(90);
  fill(10, 189, 198);
  textAlign(LEFT, CENTER);
  text("u", width/2-225, height/2.75);
  text("t", width/2-225, height/1.85);
  text("s", width/2-225, height/1.45);
  fill(113, 28, 145);
  text("u", width/2+-230, height/2.75+random(-1, 5)*0.2);
  text("t", width/2+-230, height/1.85+random(-1, 5)*0.2);
  text("s", width/2+-230, height/1.45+random(-1, 5)*0.2);
}

void bg() {
  //background(5);
  translate(width/2, height/2, 250);
  t = (float)frameCount/maxFrameCount;
  theta = TWO_PI*t;

  // lights
  directionalLight(245, 245, 245, 300, -200, -200);
  ambientLight(240, 240, 240);

  // rotate the whole cube
  rotateX(radians(45));
  rotateZ(radians(45));
  rotateY(theta);
  rotateX(theta);

  // 3 nested for loops to create sides
  for (int x = -space; x <= space; x += 30) {
    for (int y = -space; y <= space; y += 30) {
      for (int z = -space; z <= space; z += 210) {

        // map size of small cubes with offset
        float offSet = ((x*y*z))/a;
        float sz = map(sin(-(theta*2)+offSet), -1, 1, -0, 30);

        color c1 = color(random(10, 19), random(189, 62), random(198, 124));
        color c2 = color(random(10, 19), random(189, 62), random(198, 124), 50);


        if ((x*y*z)%30 == 0) {
          fill(c1);
          stroke(c2);
        } else {
          fill(c2);
          stroke(c1);
        }

        // small blocks, 3 times to create cube
        shp(x, y, z, sz);
        shp(y, z, x, sz);
        shp(z, x, y, sz);
      }
    }
  }
}

void shp(float x, float y, float z, float d) {

  pushMatrix();
  translate(x, y, z);
  scale(0.1);

  box(d);
  popMatrix();
}


void type(String name, String x, int y, int z) {
  if (z<17) {
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

    if (name==":Shōnen Batto") {
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
