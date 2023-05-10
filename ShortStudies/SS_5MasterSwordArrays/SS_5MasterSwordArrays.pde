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
PImage backgroundImg;
PFont swordFont;


void setup(){
//Canvas Size
size(1080,720);
//Calls image to be loaded in draw
backgroundImg = loadImage("MasterSwordBackGround.jpg");
//Calls text to be loaded in draw
swordFont = createFont("Triforce.ttf", 32);
}

void draw(){
//draws the image with the variable backgroundImg  
image(backgroundImg, 0, 0);
//resizes backgroundImg to canvas dimensions set in setup.
backgroundImg.resize(1080,720);

//***********************************************************************************
if(keyPressed){  
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

void steps(){
//rect(560,);
}

void triforce(){
//Triforce Symbol
//bottom left  
fill(237,234,127);
for(int x = 20; x < width; x +=50){
for(int i=60; i<pointY.length; i++){
triangle(x, pointY[i], x+10, i-20, x+20, i);
    }
  }
}
//top triangle
fill(237,234,127);
for(int x = 30; x < width; x +=50){
for(int i=40; i<pointY.length; i++){
triangle(x, pointY[i], x+10, i-20, x+20, i);
  } 
} 
//bottom right
fill(237,234,127);
for(int x = 40; x < width; x +=50){
for(int i=60; i<pointY.length; i++){
triangle(x, pointY[i], x+10, i-20, x+20, i);
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
rect(600,160,20,40);
//BladeHiltLeftSide
rect(520,160,20,40);
//BladeHandle
rect(557,80,25,80);
}
