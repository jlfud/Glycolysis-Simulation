int atp = 0;
int glucose = 0;
  
void setup(){
  size(1000,1000); 
  fill(255);
  rect(800,100,175,100); //button 1
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
  //make setup function for each phase?
  setup();
  //!!!
  //MAKE FUNCTIONS AND IF STATEMENTS TO CHECK FOR EACH PHASE
  //!!!
  moveCytosol();
}
void moveCytosol(){
   rect(200, 40, 300,70);
}
void beginning(){
  //add glucose
  //check for intersection or set increase, changes shape, etc. 
  //probably should make new functions, but that's alright
  clear();
  setup();
  atp++;
  fill(255);
  rect(100, 40+atp, 70,70);
  rect(400, 40+atp,70,70);
  fill(0);
  text("ATP",105, 75+atp);
  text("ATP",405, 75+atp);
  
}
void splitting(){
  
}
void energyGen(){
  
}
