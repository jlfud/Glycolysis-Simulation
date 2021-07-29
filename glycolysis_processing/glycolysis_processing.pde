int phase = 0; 
int glucose = 0;
int atp = 0;
int dpgp = 0;
int pnad = 0;

PImage glucoseImg; 
PImage ATPImg; 
PImage glucose2Img;
PImage ADPImg; 
PImage dpImg;
PImage gpImg; 
PImage pImg; 
PImage nadImg;
PImage b13Img; 
PImage phospho2Img;
PImage phospho3Img;
PImage nadhImg; 
PImage phosphoImg; 
PImage pyruvateImg; 

void setup(){
  glucoseImg = loadImage("glucose.PNG");
  ATPImg = loadImage("atp.PNG");
  glucose2Img = loadImage("glucose2.PNG");
  ADPImg = loadImage("adp.PNG");
  dpImg = loadImage("dp.PNG");
  gpImg = loadImage("gp.PNG");
  pImg = loadImage("p.PNG");
  nadImg = loadImage("nad.PNG");
  b13Img = loadImage("13b.PNG"); 
  phospho2Img = loadImage("2phospho.PNG");
  phospho3Img = loadImage("3phospho.PNG");
  nadhImg = loadImage("nadh.PNG"); 
  phosphoImg = loadImage("phospho.PNG"); 
  pyruvateImg = loadImage("pyruvate.PNG");

  size(1000,1000); 
  fill(255);
  rect(800,100,175,100); //button 1
  rect(800,250,175,100); //button 2
  rect(800,400,175,100); //button 3
  fill(0);
  textSize(15);
  text("start glycolysis", 825,150);
  text("splitting of glyclose", 825,300);
  text("energy generation", 825, 450);
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
  if(phase == 0){
     phase1Start(); 
  }
  if(phase == 1){
     moveGlucose();
  }
  else if(phase == 2){
     beginning(); 
  }
  else if(phase == 3){
     oneEnding(); 
  }
  else if(phase == 4){
     splitting(); 
  }
  else if(phase == 5){
     dropPnad();
  }
  else if(phase == 6){
      //drop pnad 2 (change)
  }
  //adp moves
  //changes (atp, 3 phosphogly)
  //change and add when atp reaches top
  //adp up
  //adp down (change)
}
void mouseClicked(){
   if(mouseX > 800 && mouseX < 975 && mouseY > 100 && mouseY < 200){
     phase = 0; 
     glucose = 0;
     atp = 0;
     phase = 1; 
   }
   else if(mouseX > 800 && mouseX < 975 && mouseY > 250 && mouseY < 350){
     dpgp =0;
     phase = 4; 
   }
   else if(mouseX > 800 && mouseX < 975 && mouseY > 400 && mouseY < 500){
      phase = 5;  
   }
}
void phase1Start(){
   fill(0);
   text("cytosol", 400, 600); 
   image(ATPImg, 100, atp, 70,70);
   image(ATPImg, 400, atp,70,70);
}
void moveGlucose(){
   image(ATPImg, 100, atp, 70,70);
   image(ATPImg, 400, atp,70,70);
   glucose+=5;
   image(glucoseImg, -300 + glucose, 500, 300,70);
   if(glucose == 400){
     phase = 2;
   } 
}
void beginning(){
  image(glucoseImg, -300 + glucose, 500, 300,70);
  atp+=5;
  image(ATPImg, 100, atp,70,70);
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
void splitting(){
  if(dpgp != 100){
    dpgp+=1;
  }
  image(dpImg, 150-dpgp, 500, 150, 70);
  image(gpImg, 300+dpgp, 500, 150, 70);
  image(ADPImg, 100, 900, 70,70);
  image(ADPImg, 400, 900,70,70);
}
void dropPnad(){
  if(pnad != 460){
     pnad+=5; 
  }
  else{
     phase = 6; 
  }
  image(dpImg, 50, 500, 150, 70);
  image(gpImg, 400, 500, 150, 70);
  image(ADPImg, 100, 900, 70,70);
  image(ADPImg, 400, 900,70,70);
  image(pImg, 40,40+pnad,50,50); 
  image(nadImg, 100, 40+pnad, 50, 50);
  image(pImg, 400,40+pnad,50,50); 
  image(nadImg, 460, 40+pnad, 50, 50);
}
