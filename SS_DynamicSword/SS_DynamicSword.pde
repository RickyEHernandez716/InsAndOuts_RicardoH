int bGValue = 25; 
int rect1X = 540;
int rect1Y = 150;
int rect2X = 560;
int rect2Y = 80;
void setup(){
size(1080,720);
}

void draw() {
background(bGValue); 
if (mousePressed){
  background(random(0,255));
}


//Blade
fill(145);
rect(mouseX,mouseY,20,300);
//BladeTip
fill(145);
triangle(560,460,580,460,570,490);
//BladeHilt
fill(0);
rect(rect1X,rect1Y,60,20);
//BladeHandle
fill(0);
rect(rect2X,rect2Y,20,80);
//HandleFinish
fill(0);
ellipse(570,75,30,30);

/*
if (keyPressed){
rect1X = random();
rect1Y = random();
rect2X = random();
rect2Y = random();
}*/
}
