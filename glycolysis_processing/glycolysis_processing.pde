int phase = 1; 
int glucose = 0;
int atp = 0;
 
PImage glucoseImg; 
PImage ATPImg; 
PImage glucose2Img;
PImage ADPImg; 
void setup(){
  glucoseImg = loadImage("glucose.PNG");
  ATPImg = loadImage("atp.PNG");
  glucose2Img = loadImage("glucose2.PNG");
  ADPImg = loadImage("adp.PNG");
  
  size(1000,1000); 
  fill(255);
  rect(800,100,175,100); //button 1
  text("1", 800,100,175,100);
  rect(800,250,175,100); //button 2
  rect(800,400,175,100); //button 3
  fill(255);
  rect(750,600,240, 390); //for description
  fill(0);
  textSize(25);
  text("description", 800, 635);
  line(750,640,990,640);
  fill(255);
  rect(20, 20, 700, 950);
}

void draw(){
  setup();
  //for each button, beginning scene uses phase 0, ending uses last phase
  if(phase == 1){
     moveGlucose();
  }
  else if(phase == 2){
     beginning(); 
  }
  else if(phase == 3){
     oneEnding(); 
  }
  
}
void moveGlucose(){
   glucose+=5;
   image(glucoseImg, -300 + glucose, 500, 300,70);
   if(glucose == 400){
     phase = 2;
   } 
}
void beginning(){
  image(glucoseImg, -300 + glucose, 500, 300,70);
  atp+=5;
  image(ATPImg, 100, atp, 70,70);
  image(ATPImg, 400, atp,70,70);
  if(atp == 500){
     phase = 3; 
  }
}
void oneEnding(){
  image(glucose2Img, -300 + glucose, 500, 300,70);
  if(atp != 900){
     atp+=5;
  }
  image(ADPImg, 100, atp, 70,70);
  image(ADPImg, 400, atp,70,70);
}
