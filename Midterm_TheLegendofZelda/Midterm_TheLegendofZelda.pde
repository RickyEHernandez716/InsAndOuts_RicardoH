/*
**************************************************************************************
Please Be Advised That Certain Fuctions From This Sketch May Cause Episodes of 
Epilepsy If Triggered Repeatedly! Please Allow A Minimum Of Five Seconds Between 
Triggers To Call. 

  Functions with a line of stars noted above them to indicate said trigger functions 
**************************************************************************************
*/

//Global Values To Be Called Throughout Script

//Processing Image Variable Holding Value of backgroundImage
PImage[] backgroundImg = new PImage[2];
//Create Variable whichImg To Track Position
int whichImg = 0;
//Processing Font Variable Holding Value of swordFont
PFont swordFont;
//Processing Font Variable Holding Value of oldManFont
PFont oldManFont;
//Creating State Variable Called scene. 
int scene = 0; 
//Create An Array Of Integers For Objects Moving On X Axis
int[] xAxis = new int[10];
//Create An Array Of Integers For Objects To Be Spawned On Y Axis
int[] yAxis = new int[50];
//Create Integer speed To Be Used To Set Speed For X Axis Objects
int speed = 2;
//Variables used in navi function.
float x = 100; 
float y = 100;
//Variables Used for RGB Fill Values
float r = 0;
float g = 0;
float b = 0;


void setup(){
//Canvas Size
size(1080,720);
//Calls image to be loaded in draw
backgroundImg[0] = loadImage("MasterSwordBackGround.jpg");
backgroundImg[1] = loadImage("FairyFountain.jpg");

//Calls text to be loaded in draw
swordFont = createFont("Triforce.ttf", 32);

//Calls text to be loaded in draw
oldManFont = createFont("nintendo-nes-font.ttf", 32);
  
//initializing the array with for loop and random numbers
for (int i=0; i<xAxis.length; i++) {
xAxis[i]= int(random(width));
yAxis[i]= int (random(height));
  }

}

void draw(){
background(0);
if (scene == 1){
 scene1(); 
}
else
if (scene == 2){
 scene2(); 
}
else
if (scene == 3){
 scene3(); 
 println(scene);
}

if(keyPressed){
 if (key== '1') {
    scene=1;
  } else if (key== '2') {
    scene=2;
  } else if (key=='3') {
    scene=3;
  }
}


}

void columns(){
//ColumnColors
fill(170,170,168);
//LeftColumn
rect(30,0,150,720);
rect(900,0,150,720);
//RightColumn
rect(5,0,200,50);
rect(875,0,200,50);
//ColumnDecoractionColor
fill(121,119,114);
//LeftSide
rect(45,50,15,720);
rect(75,50,15,720);
rect(105,50,15,720);
rect(135,50,15,720);
rect(165,50,15,720);
//RightSide;
rect(915,50,15,720);
rect(945,50,15,720);
rect(975,50,15,720);
rect(1005,50,15,720);
rect(1035,50,15,720);
}


void rocks(){
//RockColor
fill(191,168,73);
//LeftSideRocks
circle(75,680,400);
circle(60,680,250);
circle(205,730,200);
//RightSideRocks
circle(1010,680,400);
circle(1000,680,250);
circle(870,730,200);
} 

void sword(){
//Blade
fill(145);
rect(560,160,20,300);
//BladeTip
triangle(560,460,580,460,570,490);
//BladeHilt
fill(0,0,255);
rect(520,150,100,20);
//BladeHandleEndFinish
fill(0,0,255);
rect(557,75,25,80);
fill(255,255,0);
//BladeHandleDiamondTophalf
triangle(560,120,580,120,570,100);
//BladeHandleDiamondBottomHalf
triangle(560,120,580,120,570,140);
}



void triforce(){
//Triforce Symbol
//bottom left  
fill(237,234,127);
for(int x = 20; x < width; x +=50){
for(int y = 60; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
  }
}
//top triangle
fill(237,234,127);
for(int x = 30; x < width; x +=50){
for(int y = 40; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
  } 
} 
//bottom right
fill(237,234,127);
for(int x = 40; x < width; x +=50){
for(int y = 60; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
    }  
  }
}

void swordText(){
//Master Sword Text 
fill(0);
textFont(swordFont);
textSize(64);
text("Master Sword", 380, 60);
}

void masterSwordAwaken(){
fill(0,0,255);
//BladeHiltRightSide
rect(600,160,20,40);
//BladeHiltLeftSide
rect(520,160,20,40);
} 

void scene1(){  
//draws the image with the variable backgroundImg  
image(backgroundImg[0], 0, 0, 1080, 720);  
if(mousePressed){
//***********************************************************************************
triforce();
masterSwordAwaken();
swordText();
//***********************************************************************************
}
//Calls columns
columns();
//Calls rocks
rocks();
//Calls sword
sword();
}

void scene2(){
//draws the image with the variable backgroundImg  
image(backgroundImg[1], 0, 0, 1080, 720);  
//Call Faries 
faries();
moveableFairy();
navi();
}


/*
The code used in fucntion faries was modified from 
Demo4 Array Loops that is on the class github
*/
void faries(){
//Draw Ellipses That Are Meant To Be Fariies 
stroke(255,3,209);
fill(255,185,242);
for (int i=0; i<xAxis.length; i++) 
 {
   ellipse(xAxis[i]+speed, yAxis[i], 50, 50);
   xAxis[i]+=speed;
   
   if (xAxis[i] + speed > width || xAxis[i] + speed < width) {
      speed=-speed;
    } else {
      xAxis[i]+=speed;
    }
 }
 
}

void navi(){
stroke(119,168,245);
fill(181,246,252);
ellipse(x,y,50,50);
//NaviText 
fill(0);
textFont(swordFont);
textSize(32);
text("Hey! Listen!" , x, y);
}

void moveableFairy(){
stroke(255,3,209);
fill(255,185,242);
ellipse(mouseX,mouseY,50,50);
}

void scene3(){
boarders();
fire();
oldMan();
moveablePlayer();
if (mousePressed){
itsDangerousToGoAlone();
bitSword();
  }
}

void boarders(){
noStroke();  
//BoarderColors
fill(245,98,49);
//LeftBoarder
rect(0,0,150,720);
//RightBoarder
rect(930,0,150,720);
//LeftBottom;
rect(0,670,300,100);
//RightBottom
rect(780,670,300,100);
}

void fire(){
//BaseColors
fill(106,67,54);
//LeftSideFireBases
square(300,200,50);
square(300,350,50);
square(300,500,50);
//RightSideFireBases
square(725,200,50);
square(725,350,50);
square(725,500,50);
//FireColor
fill(r,g,b);
//FireLeftSide
triangle(300,200,325,185,350,200);
triangle(300,350,325,335,350,350);
triangle(300,500,325,485,350,500);
//FireLeftSide
triangle(725,200,750,185,775,200);
triangle(725,350,750,335,775,350);
triangle(725,500,750,485,775,500);
if (mousePressed){
    r=247;
    g=48;
    b=7;
  } 
  else 
  {
    r=0;
    g=0;
    b=0;
  }
}

void oldMan(){
//BodyColor
fill(247,164,7);
//Body
rect(530,100,40,80);
//Arms
//LeftSide
rect(515,100,20,40);
//RightSide
rect(565,100,20,40);
//SkinColor
fill(247,223,177);
//Head
rect(540,90,20,20);
//Hands
//Left
rect(520,140,10,10);
//Right
rect(570,140,10,10);
}

void bitSword(){
  //SwordHandle
fill(100,80,42);
rect(546,255,8,15);  
//SwordBlade
fill(165);
rect(545,225,10,35);
}

void itsDangerousToGoAlone(){
//OldManText 
fill(255);
textFont(oldManFont);
textSize(23);
text("It's dangerous to go alone!", 240, 50);
text("Take This!", 450, 80);
}

void moveablePlayer(){
stroke(0);
fill(31,240,57);
ellipse(mouseX,mouseY,50,50);
}

void keyPressed(){
if (key == 'n'){
  x = random(width);
  y = random(height);
  }
}
