void setup (){
size(700,750);
rectMode(CENTER);
}

void draw(){
background(255,220,200);

int x = 50;

while(x<width){
ellipse(x,height/2,75,75);
x+=100;
  }
  
int y = 50;

while(y<height){
rect(width/2,y,75,75);
y+=100;
  }
}
