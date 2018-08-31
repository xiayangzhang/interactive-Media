void detectface() {
      imageMode(CORNER);


 


 // if (notice==false) {
 //   facedect.rewind();        
 //   facedect.play();
 //   notice=true;
 // }
 // if (facedect.isPlaying()==true) {
 //  banner("welcome to universe telegram system. According to the latest National Act. the system must confirm biometrics for all users. Please face the camera.");
 // } 





 if(facedect.isPlaying()==false) {  
    opencv.loadImage(video);
  image(video, 0, 0 );

  noStroke();
  fill(0, 0, 0, 80); 
  //rect(0,0,width,height);
  rect(0, 0, width, height/4);
  rect(0, height/4, width/3, height/4*2);
  rect(width/3*2, height/4, width/3, height/4*2);
  rect(0, height/4*3, width, height);
  textFont(face_dect);
  fill(10, 189, 198);
  textAlign(CENTER, CENTER);
  text("Biometric", width/2, height/8-30);
  text("detection", width/2, height/8);
   
  fc();
   }
}


void fc() {

  Rectangle[] faces = opencv.detect();
  println(faces.length);
  stroke(c);

  if (faces.length==0) {
    facesaved=3;
  fill(255); 

    text("undetected", width/2, height/2-30);
    text("valid", width/2, height/2);
    text("biometric", width/2, height/2+30);
  }

  if (faces.length>=2) {
    facesaved=3;

    text("please", width/2, height/2-30);
    text("gaze me", width/2, height/2);
    text("along", width/2, height/2+30);
  }

  for (int i = 0; i < faces.length; i++) {
    //println(faces[i].x + "," + faces[i].y);
    noFill();
    strokeWeight(3);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);

    rect(width/3, height/4, width/3*1, height/4*2);

    textSize(40);
    fill(255);



    if (faces[i].width>=width/3||faces[i].height>=height/4*2) {
      facesaved=3;


      c=color(255, 0, 0);

      text("too", width/2, height/2-30);
      text("close", width/2, height/2);
      text("please", width/2, height/2+30);
      text("backward", width/2, height/2+60);

      text("too", width/2, height/2-30+random(-1, 1));
      text("close", width/2, height/2+random(-1, 1));
      text("please", width/2, height/2+30+random(-1, 1));
      text("backward", width/2, height/2+60+random(-1, 1));
    } else if (faces[i].x<=width/3||
      faces[i].x+faces[i].width>=width/3*2||
      faces[i].y<=height/4||
      faces[i].y+faces[i].height>=height/4*3) {

      c=color(255, 0, 0);
      facesaved=3;

      text("please", width/2, height/2-30);
      text("put", width/2, height/2);
      text("face", width/2, height/2+30);
      text("inside", width/2, height/2+60);

      text("please", width/2, height/2-30+random(-1, 1));
      text("put", width/2, height/2+random(-1, 1));
      text("face", width/2, height/2+30+random(-1, 1));
      text("inside", width/2, height/2+60+random(-1, 1));
    } else {
      c=color(0, 255, 0);
      text("please", width/2, height/6*5-30);
      text("wait.."+facesaved, width/2, height/6*5+30);
      text("please", width/2, height/6*5-30+random(-1, 1));
      text("wait.."+facesaved, width/2, height/6*5+30+random(-1, 1));
      if (frameCount%10==0&&facesaved>=0) {
        //screen = get();
        if (facesaved==0) {
          PImage face1 = video.get(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
          face1.save("face1.jpg");
          facesaved--;
        } else if (facesaved==1) {
          PImage face2 = video.get(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
          face2.save("face2.jpg");
          facesaved--;
        } else if (facesaved==2) {
          PImage face3 = video.get(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
          face3.save("face3.jpg");
          facesaved--;
        } else if (facesaved==3) {    
          PImage face4 = video.get(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
          face4.save("face4.jpg");
          facesaved--;
        }
      }

      if (facesaved<=-1) {
        act++;
        proc=true;

        //  PImage faceone = loadImage("face1.jpg");
        //image(faceone,5,5);

        //PImage facetwo = loadImage("face1.jpg");
        //image(facetwo,5,height-facetwo.height-5);

        //PImage facethree = loadImage("face1.jpg");
        //image(facethree,width-facethree.width-5,0);

        //PImage facefour = loadImage("face1.jpg");
        //image(facefour,width-facethree.width-5,height-facetwo.height-5);
      }



      //saveface(facesaved);}
    }
  }
}





void captureEvent(Capture c) {
  c.read();
}
