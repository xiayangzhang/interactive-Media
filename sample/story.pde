void story(int x) {
        imageMode(CORNER);

  image(Glitch.apply(backg, int(random(0, 11))*2), 0, 0);
  image(enter, 580, 430);
  image(enter, 580+random(-2,2), 430+random(-2,2));
  strokeWeight(2);
  stroke(0,100,0);
  noFill();
  rect(25, 60, 590, 400);
  rect(25, 430, 590, 30 );
  rect(25+random(-1,1), 60+random(-1,1), 590, 400);
  rect(25+random(-1,1), 430+random(-1,1), 590, 30 );
  textFont(f1);
  fill(0, 50, 0);
  textAlign(CENTER, CENTER);
  text("Private message", width/2+random(-1,1), 30+random(-1,1));
    fill(50, 0, 0);

  //text("Private message", width/2+random(-1,1), 30+random(-2,2));







  typ("nico:", "are you still there?", x, order+1);
  typ("nico:", "What just happened?", x, order+2);
  typ("nico:", "Did they find you?", x, order+3); 
  typ(":Shonen Batto", "not yet", x, order+4);
  //typ(":Shonen Batto", "I don't know why, just dissconnect.", x, order+5);
  //typ(":Shonen Batto", "always like this", x, order+6);
  //typ(":Shonen Batto", "After the last large-scale awakening", x, order+7);
  //typ("nico:", "my boy", x, order+8);
  //typ("nico:", "don't say that A word again,", x, order+9);
  //typ("nico:", "my boy", x, order+10);
  //typ("nico:", "don't say that A word again,", x, order+11);
  //typ("nico:", "my boy", x, order+12);
  //typ("nico:", "don't say that A word again,", x, order+13);
  //typ("nico:", "my boy4", x, order+14);
  //typ("nico:", "don't say that A word again,5", x, order+15);
  //typ("nico:", "my boy6", x, order+16);
  //typ("nico:", "don't say that A word again7,", x, order+17);
  //  typ("nico:", "don't say that A word again7,", x, order+18);

  typ("end", "don't say that A word again7,", x, order+5);

  screen = get();
  image(Glitch.apply(screen, int(random(0, 2))), 0, 0);



  
}
