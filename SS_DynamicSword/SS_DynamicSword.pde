/*This processing sketch was made by Ricardo Hernandez. It is based off of 
the design of the master sword from Legend of Zelda.*/

//Initiate global values to be chnaged at will. 
float bGValue = 25; 
int bladeHiltX = 520, bladeHiltY = 150, bladeHiltW = 100, bladeHiltH = 20;
int bladeHandleX = 557, bladeHandleY = 80, bladeHandleW = 25,  bladeHandleH = 80;
float fillBlade = 145, fillBladeTip = 145;

//Set up initializes the canvas when the file is opened. 
void setup(){
//Canvas size
size(1080,720);
}

//Updates with every frame. 
void draw() {
//Backgroud color 
background(bGValue); 


//Blade
fill(fillBlade);
rect(560,160,20,300);
//BladeTip
fill(fillBladeTip);
triangle(560,460,580,460,570,490);
//BladeHiltRightSide
fill(0,0,255);
rect(600,160,20,40);
//BladeHiltLeftSide
fill(0,0,255);
rect(520,160,20,40);
//BladeHilt
fill(0,0,255);
rect(bladeHiltX,bladeHiltY,bladeHiltW,bladeHiltH);
//BladeHandleEndFinish
fill(0,0,255);
rect(bladeHandleX,75,bladeHandleW,bladeHandleH);
//BladeHandle
fill(0,0,255);
rect(bladeHandleX,bladeHandleY,bladeHandleW,bladeHandleH);
//BladeHandleDiamondTopHalf
fill(255,255,0);
triangle(560,120,580,120,570,100);
//BladeHandleDiamondBottomHalf
fill(255,255,0);
triangle(560,120,580,120,570,140);


}
// When mouse is pressed, global values are given new random values between 0-255
void mousePressed(){
  bGValue = random(255);
  fillBlade = random(255);
  fillBladeTip = random(255);
  }
