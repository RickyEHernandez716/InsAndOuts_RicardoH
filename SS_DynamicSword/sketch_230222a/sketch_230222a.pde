void setup(){
size(500,500);
}


void draw(){
background(255);
for(int x=10;x<width;x+=10){
line(x,0,x,height);
}
}
