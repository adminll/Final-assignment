/**199 lines of code total (Not including spaces and { } and other comments)
created by: Spletz
Write at bottom of code
*/

//Images
PImage bck1;
//------

PImage icon1; 
//------

PImage icon2;
//------
PImage blue; 
//------
PImage moth;
//------

//boolean for total prank
boolean totalPrank = false;
boolean blueScreen = false;
//-------------------------

//Used for controls
boolean controls = true;
//---------------------------

//intro boolean and int
boolean intro = true;
int intr = 0;
//intro light
float lightIntro = 0;
float lightIntro2 = 0;
float lightIntro3 = 0;
//------------------------


//boolean for moving character
boolean movementW = false;
boolean movementA = false;
boolean movementS = false;
boolean movementD = false;
//-----------------------------

//varibles for movement
float moveW = 0;
float moveA = 0;
float moveS = 0;
float moveD = 0;
float light = 0;
//---------------------

//moving stuff
float x = 400;
float y = 20;
//------------
float mX = random(-25);
float mY = random(20);
//----------------------

//setup for game thing
void setup() {
  size(800,800);
  bck1 = loadImage("starrynight.jpg");
  icon1 = loadImage("star.png");
  icon2 = loadImage("star.png");
  blue = loadImage("bluescreen.png");
  moth = loadImage("mothlolxd.png");
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  
}
//--------------------------------

//start of draw
void draw() {
  
  //stroke
  noStroke();
  //------
  
  //background image
  background(bck1);
  //----------
  
  //Opacity for intro
  lightIntro = lightIntro+1;
  lightIntro2 = lightIntro2+1;
  lightIntro3 = lightIntro3+1;
  intr = intr+1;
  

  
  //makes the light fade
  if(blueScreen == false)
  {
    light = light+1;
  }
  if(blueScreen == true)
  {
    light = light-light;
  }
  
  //random fading
  fill(0,255,255,50);
  ellipse(mouseX,mouseY,50,50);
  
  //stars
  fill(255);
  
  
  
  //star bounce
  image(icon1,x,y);
  x = x + mX;
  y = y + mY;
  //--------
  
  //bounces computer
  if(x > width) {
    x = width;
    mX = -mX;
  }
  
  if(y > height) {
    y = height;
    mY = -mY;
  }
  
  if(x < 0) {
    x = 0;
    mX =-mX;
  }
  
  if(y < 0) {
    y = 0;
    mY = -mY;
  }
  //--------
  
    //lamp
  fill(90);
  rect(400,700,20,200);
  fill(95);
  ellipse(400,630,25,10);
  ellipse(400,640,25,10);
  ellipse(400,650,25,10);
  ellipse(400,650,25,10);
  ellipse(400,660,25,10);
  ellipse(400,670,25,10);
  ellipse(400,680,25,10);
  ellipse(400,690,25,10);
  ellipse(400,700,25,10);
  fill(254,255,3,light);
  ellipse(400,580,40,40);
  fill(90);
  ellipse(400,600,40,20);
  ellipse(418,580,10,40);
  ellipse(382,580,10,40);
  ellipse(400,562,40,10);
  ellipse(400,548,10,40);
  
  
   //"Character"
  fill(0);
  rect(moveD+moveA,moveW+moveS,10,10);
  //--------------------------------------
  
  
  
  //ground
  fill(143);
  rect(0,800,8000,40);
  fill(24);
  rect(0,802,8000,40);
  fill(143);
  rect(0,804,8000,40);
  fill(24);
  rect(0,806,8000,40);
  fill(143);
  rect(0,808,8000,40);
  fill(24);
  rect(0,810,8000,40);
  fill(143);
  rect(0,812,8000,40);
  fill(24);
  rect(0,814,8000,40);
  fill(143);
  rect(0,816,8000,40);
  fill(24);
  rect(0,818,8000,40);
  fill(143);
  rect(0,820,8000,40);
  //--------------------
  
  
  //cursor changes because its cool
  cursor(1);
  //-------------------------------
  
  //moves forward
  if(movementW == true)
  {
    moveW = moveW-5;
  }

  
  //moves backward
  if(movementS == true)
  {
    moveS = moveS+5;
  }
  
  //moves right
  if(movementD == true)
  {
    moveD = moveD+5;
  }
  
  //moves left
  if(movementA == true)
  {
    moveA = moveA-5;  
  }
  //---------------------
  
  //totally prank yourself
  if(totalPrank == true) {
    fill(random(255),random(255),random(255));
    ellipse(random(800),random(800),random(255),random(255));
  }
  //---------------------------
  
  //Secret message
  if(key == 'r')
  {
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("Press 'F' to totally prank yourself", 400,100);
  }
  //-----------------------------------------------------

  
  //bluescreen prank boolean
  if(blueScreen == true) {
    image(blue,0,0);
  }
    
    //For tutorial screen
 if(controls == true) {
   fill(255,132,5);
   rect(400,400,800,800);
   fill(255);
   textAlign(CENTER);
   textSize(20);
   text("Q = Computer crash", 400, 100);
   text("------------------",400,150);
   text(" W = Up for moth", 400,200);
   text(" A = Left for moth", 400,250);
   text(" S = Down for moth", 400,300);
   text(" D = Right for moth", 400,350);
   text("------------------",400,400);
   text("R = Secret message",400,450);
   text("------------------",400,500);
   text("N = Reset the computer crash",400,550);
   text("------------------",400,600);
   text("Click on lamp to reset lamp fade",400,650);
   text("------------------",400,700);
   text("X to exit this tutorial",400,750);
   text("T to open tutorial",400,780);
   movementW = false;
   movementA = false;
   movementS = false;
   movementD = false;
 //-------------------------------------------
 
 }
 
 //Timer for intro
 if(intr >= 300)
 {
   intro = false;
 }
 //-------------------
 
 //Screen for intro
 if(intro == true)
 {
   background(0);
   textAlign(CENTER);
   textSize(40);
   fill(255,255,255,lightIntro);
   text("Processing 3.4 final assignment", 400,300);
   fill(255,255,255,lightIntro2);
   text("for PTEC", 400,350);
   fill(255,255,255,lightIntro3);
   text("by Spletz",400,400);
   //---------------------------
 }
  //END OF DRAW---------------------------------------------------------------END OF DRAW
}

//Key controls to move character
void keyPressed() { 
  
  //exits tutorial
  if(key == 'x')//A
  {
    controls = false;
  }
  
  //tutorial
  if(key == 't') {//A
    controls = true;
  }
  
  //moves forward
  if(key == 'w') 
  {
    movementW = true; 
    movementA = false; 
    movementS = false;
    movementD = false; 
  }
  
  //moves left
   if(key == 'a')
   {
    movementW = false;
    movementA = true;
    movementS = false;
    movementD = false;
  }

//moves backward
 if(key == 's') 
  {
    movementW = false; 
    movementA = false; 
    movementS = true; 
    movementD = false; 
  }
  
  //moves right
   if(key == 'd') 
  {
    movementW = false; 
    movementA = false; 
    movementS = false; 
    movementD = true; 
  }
  
  // stops the shape
  if(key == 'e')
  {
    movementW = false; 
    movementA = false; 
    movementS = false; 
    movementD = false; 
  }
  
  //for total prank xd
  if(key == 'f') { 
    totalPrank = true; 
  }
  
  //------------------
  
  //another bluescreen total prank
  if(key == 'q'){
    blueScreen = true; 
    movementW = false; 
    movementA = false; 
    movementS = false; 
    movementD = false; 
  }
  
  //Resets computer crash
  if(key == 'n'){
    blueScreen = false; 
    totalPrank = false; 
  }
  //-------------------------------
}
//END OF KEYPRESSED----------------------

//used to reset the light
void mouseClicked() {
  if(mouseX >380  && mouseX <410  && mouseY >570  && mouseY <590 )
  {
    light = light-light;
  }
}

//END OF MOUSECLICKED

/** Write up for Final assignment of processing 3.4
1. My four+ objects are: Intro text, Tutorial text, The “moth” (Moveable square), The background, the lamp (Combination of rects and ellipses), and the ground.

2. My one self taught animation is the star bouncing around the screen. It's kind of soothing watching it bounce around. (It also bounces around in different patterns each time you start the program)

3. My four+ animations are: The moth/square moving with controls to move it, the intro transition with the fade of the text, random circles of different colours on the screen (Epilepsy warning), the computer crash, and the lamp (When clicked on)

4. When you press Q, the computer crashes. When you press either W, A, S, or D (Would reccommend pressing D and S first), the square moves in that direction. When you press R, a secret message is revealed. When you press N, it resets the computer crash. X is to exit the tutorial and T is to bring it back up.

5. When you click on the lamp, the lamp resets and the light fades back into view.
*/
