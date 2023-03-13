/*DISCLAIMER!! THIS SKETCH MAY BE HARMFUL TO THOSE WITH EPILEPSY! IF YOU ARE SENSITIVE TO 
STROBBING LIGHTS OR PATTERNS, PLEASE REFRAIN FROM PRESSING ANY KEY REPEATEDLY VERY FAST!
10 SECONDS BETWEEN KEY PRESSES IS RECOMMENDED.

/*This processing sketch was made by Ricardo Hernandez. It is based off of 
the design of the master sword from Legend of Zelda.*/

//Initiate global values to be chnaged. 
float bGValue = 25; 
int bladeHiltX = 520, bladeHiltY = 150, bladeHiltW = 100, bladeHiltH = 20;
int bladeHandleX = 557, bladeHandleY = 80, bladeHandleW = 25,  bladeHandleH = 80;
int tri_x1BL =  20, tri_y1BL = 60, tri_x2BL = 30, tri_y2BL = 40, tri_x3BL = 40, tri_y3BL = 60;
int tri_x1TT =  30, tri_y1TT = 40, tri_x2TT = 40, tri_y2TT = 20, tri_x3TT = 50, tri_y3TT = 40;
int tri_x1BR =  40, tri_y1BR = 60, tri_x2BR = 50, tri_y2BR = 40, tri_x3BR = 60, tri_y3BR = 60;
float fillBlade = 145, fillBladeTip = 145;
PImage forestImg; 
PFont swordFont;

//Set up initializes the canvas when the file is opened. 
void setup(){
//Canvas size
size(1080,720);
forestImg = loadImage("SwordForest.jpg");
swordFont = createFont("The Wild Breath of Zelda.otf", 32);
}


//Updates with every frame.
void draw() {
//Backgroud color 
background(bGValue); 
//Draw the Image 
//image(forestImg,10,10);
//Master Sword Text 
textSize(32);
text("Master Sword" 25, 60);
//Triforce Symbol
//bottom left  
for(int x = 20; x < width; x +=50){
for(int y = 60; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
}
}
//top triangle
for(int x = 30; x < width; x +=50){
for(int y = 40; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
} } 
//bottom right
for(int x = 40; x < width; x +=50){
for(int y = 60; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
}  
}
//Added extra details for sword when key is pressed. 
if (keyPressed){
//Forest Iamge
image(forestImg,0,0);
//BladeHiltRightSide
fill(0,0,255);
rect(600,160,20,40);
//BladeHiltLeftSide
fill(0,0,255);
rect(520,160,20,40);
//BladeHandle
fill(0,0,255);
rect(bladeHandleX,bladeHandleY,bladeHandleW,bladeHandleH);
}

//Blade
fill(fillBlade);
rect(560,160,20,300);
//BladeTip
fill(fillBladeTip);
triangle(560,460,580,460,570,490);
//BladeHilt
fill(0,0,255);
rect(bladeHiltX,bladeHiltY,bladeHiltW,bladeHiltH);
//BladeHandleEndFinish
fill(0,0,255);
rect(bladeHandleX,75,bladeHandleW,bladeHandleH);

if (keyPressed){
//BladeHandleDiamondTopHalf
fill(255,255,0);
triangle(560,120,580,120,570,100);
//BladeHandleDiamondBottomHalf
fill(255,255,0);
triangle(560,120,580,120,570,140);
    }
  }
// When mouse is pressed, global values are given new random values between 0-255
void mousePressed(){
  bGValue = random(0,255);
  fillBlade = random(0,255);
  fillBladeTip = random(0,255);
  }
  
/*void forestImgOnPress(){
  while(keyPressed){
  //Forest Image is being called to upper left hand corner of screen while key is pressed
  image(forestImg,0,0);
  }
}
*/
