void samplebanner(){

fill(0,0,0,50); 
noStroke();
rect(0,height/3*2-10,width,20);
//for(int x=0;x<width;x++){
//  translate(x,0);
    textFont(p1);
fill(255,0,0);  
  textAlign(CENTER, CENTER);

  text("sample code,display only",samplebanner,height/3*2-3);
    text("sample code,display only",samplebanner+width,height/3*2-3);

  
if(samplebanner>=0){
  samplebanner++;
}

if(samplebanner>=width){
  samplebanner=0;
}
//}

}
