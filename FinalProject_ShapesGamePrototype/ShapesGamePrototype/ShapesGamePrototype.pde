Shapes[] trash = new Shapes[3];
Shapes[] trash2 = new Shapes[3];

void setup(){
size(1000,1000);
for(int i = 0; i < trash.length; i++){
trash[i] = new Shapes();
  }
}

void draw(){
background(255);
rect(0,0,1000,1000);
fill(#36B74A);
rect(0,0,100,1000);
fill(#C12000);
rect(900,0,100,1000);


for(int i = 0; i < trash.length; i= i+1){
trash[i].spawn();
trash[i].moveTrash();
trash[i].pushBackPlayer();

trash2[i].spawn();
trash2[i].moveTrash();
trash2[i].pushBackPlayer();
  }  
}


class Shapes{

float r;
float xTrash; 
float yTrash;
float xTrash2; 
float yTrash2;
float xTrash3; 
float yTrash3;
float xTrash4; 
float yTrash4;
float xPlayer; 
float yPlayer; 

Shapes() {
  r = random(100,900);
  xTrash = 50;
  yTrash = 50;
  xTrash2 = 50;
  yTrash2 = 250;
  xTrash3 = 50;
  yTrash3 = 450;
  xTrash4 = 50;
  yTrash4 = 650;
  xPlayer = 900;
  yPlayer = height/2;

}

void spawn(){
fill(155); 
rect(xTrash,yTrash,50,50);
fill(155);  
rect(xPlayer,yPlayer,50,50);
  }

void moveTrash(){
xTrash = xTrash + 5;
if(xTrash > 850){ 
xTrash = 100;
yTrash = r;
}
}

void pushBackPlayer(){
if(xTrash > xPlayer && yTrash == yPlayer){
xPlayer = xTrash + 5; 
  }
}

void keyPressed(){
if(keyCode == LEFT){
xPlayer = xPlayer - 5;  
}
else
if(keyCode == UP){
fill(155);  
rect(xTrash,yTrash,50,50);
yPlayer = yPlayer - 5;  
}
else
if(keyPressed){
fill(155);  
rect(xTrash4,yTrash4,50,50);
yPlayer = yPlayer + 5;  
}
}

}
