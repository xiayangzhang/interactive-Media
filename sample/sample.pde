import milchreis.imageprocessing.*;
import lord_of_galaxy.timing_utils.*;

import ddf.minim.*;
import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import java.awt.Rectangle;


import jp.nyatla.nyar4psg.*;


PFont title;
PFont face_dect;
PFont f1;
PFont f2;
PFont p1;
PFont dro;


PImage face1, face2, face3, face4, screen;
PImage bg;
PImage enter;
PImage backg;
PImage important;
PImage pm;
PImage pm_id;
PImage processedImage;


float t;
float theta;
float endX = 20;
float delay;

int maxFrameCount = 250;
int a = 5; 
int space = 105; 
int act=0;
int facesaved=3;
int pt=0;
int order=0;
int d, m, y, h, mi, s;
int timeDelay;
int time;
int samplebanner=0;
color c;
color c1;
color c2;
int facedisplay=0;
Minim minim;

MultiNft nya;


AudioPlayer wcb;
AudioPlayer block;
AudioPlayer finish;
Capture video;
OpenCV opencv;

AudioPlayer tap;
AudioPlayer beep;
AudioPlayer send;
AudioPlayer bgm;
AudioPlayer facedect;
AudioPlayer error;
AudioPlayer cancel;


boolean speaker =false;
boolean proc=true;
boolean chat[][]=new boolean[2][100];
boolean ty=true;
boolean notice=false;
void setup() {
  size(640, 480, P3D);
  title = createFont("es.ttf", 60);
  //title = createFont("ZGD.ttf", 60);
  face_dect = createFont("trench.ttf", 50);
  f1  = createFont("slice.ttf", 38);
  f2 = createFont("digital.ttf", 32);
  p1 = createFont("NG.ttf", 20);
  dro = createFont("droid.ttf", 20);

  minim = new Minim(this);

  wcb = minim.loadFile("wcb.mp3");
  block = minim.loadFile("mh.mp3");
  finish = minim.loadFile("ctos.mp3");
  tap = minim.loadFile("tap1.mp3");
  beep = minim.loadFile("Beep.mp3");
  send = minim.loadFile("send.mp3");
  bgm = minim.loadFile("bgm.mp3");
  //facedect = minim.loadFile("TextTo.mp3");
  facedect = minim.loadFile("newface.mp3");
  error = minim.loadFile("error.mp3");
  cancel = minim.loadFile("newcancel.mp3");


  bgm.play();
  bgm.setGain(-15);

  backg = loadImage("bg.jpg");
  enter = loadImage("enter.png");
  important =loadImage("important.png");

  video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  nya=new MultiNft(this, width, height, "camera_para.dat", NyAR4PsgConfig.CONFIG_PSG);
  nya.addNftTarget("newscan", 100);//id=0

  video.start();

  chat[0][0]=true;

  d = day();    
  m = month();  
  y = year();
  s = second();    
  mi = minute();  
  h = hour();
}
void draw() {
  actswitch(act);
  samplebanner();
}
