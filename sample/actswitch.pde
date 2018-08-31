void actswitch(int x) {
  println("act"+x);
  switch(x) {
  case 0:
    //story(0);
  //cardscan();

   welcome();
    bg();
    break;
  
  case 1:
    loading();
    break;
 
 
 case 2:
   banner("facedetect","welcome to universe telegram system. According to the latest National Act. the system must confirm biometrics for all users. Please face the camera.");
 break;
  case 3:
    detectface();
    break;
  
 
  case 4:
    loading();
    break;
  
 case 5:
 banner("error","The system was unable to load the autosave file ("+s+"_"+mi+"_"+h+"_"+m+"_"+d+"_"+y+ ".save) and now restores the last conversation for you");
  break;
  case 6:
    story(0);
    break;
  
  case 7:
    loading();
    break;
  
  case 8:
  cardscan();
  break;
  }
}
