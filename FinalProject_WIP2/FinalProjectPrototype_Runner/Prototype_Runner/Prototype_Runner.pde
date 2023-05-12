Trash[]  trash  = new Trash[10];
Trash2[] trash2 = new Trash2[10];
Trash3[] trash3 = new Trash3[10];
Trash4[] trash4 = new Trash4[10];
Trash5[] trash5 = new Trash5[10];
Trash6[] trash6 = new Trash6[10];
Trash7[] trash7 = new Trash7[10];
Trash8[] trash8 = new Trash8[10];
Player player; 

void setup(){
size(2000,1000);

//Array One Set Up 
for(int i = 0; i < trash.length; i++){
trash[i] = new Trash();
}
//Array Two Set Up 
for(int i = 0; i < trash2.length; i++){
trash2[i] = new Trash2();
}
//Array Three Set Up 
for(int i = 0; i < trash3.length; i++){
trash3[i] = new Trash3();
}
//Array Four Set Up 
for(int i = 0; i < trash4.length; i++){
trash4[i] = new Trash4();
}
//Array Five Set Up 
for(int i = 0; i < trash5.length; i++){
trash5[i] = new Trash5();
}
//Array Six Set Up 
for(int i = 0; i < trash6.length; i++){
trash6[i] = new Trash6();
}
//Array Seven Set Up 
for(int i = 0; i < trash7.length; i++){
trash7[i] = new Trash7();
}
//Array Eight Set Up 
for(int i = 0; i < trash8.length; i++){
trash8[i] = new Trash8();
}
//Player
player = new Player();  
}

void draw(){
//Scene Setup
background(255);
fill(155);
rect(0,0,2000,1000);
fill(#36B74A);
rect(0,0,100,1000);
fill(#C12000);
rect(1900,0,100,1000);
//Functions

//Trash Functions
for(int i = 0; i < trash.length; i++){
trash[i].spawn();
trash[i].moveTrash();
trash[i].pushBackPlayer();
}
for(int i = 0; i < trash2.length; i++){
trash2[i].spawn();
trash2[i].moveTrash();
trash2[i].pushBackPlayer();
}
for(int i = 0; i < trash3.length; i++){
trash3[i].spawn();
trash3[i].moveTrash();
trash3[i].pushBackPlayer();
}
for(int i = 0; i < trash4.length; i++){
trash4[i].spawn();
trash4[i].moveTrash();
trash4[i].pushBackPlayer();
}
for(int i = 0; i < trash5.length; i++){
trash5[i].spawn();
trash5[i].moveTrash();
trash5[i].pushBackPlayer();
}
for(int i = 0; i < trash6.length; i++){
trash6[i].spawn();
trash6[i].moveTrash();
trash6[i].pushBackPlayer();
}
for(int i = 0; i < trash7.length; i++){
trash7[i].spawn();
trash7[i].moveTrash();
trash7[i].pushBackPlayer();
}
for(int i = 0; i < trash8.length; i++){
trash8[i].spawn();
trash8[i].moveTrash();
trash8[i].pushBackPlayer();
}
//Player Functions
player.spawn();
player.movePlayer();
}


class Trash{

public float r; 
public float xTrash;
public float yTrash;

Trash() {
r = random(100,900);
xTrash = 50; 
yTrash = 50; 
}

void spawn(){
fill(0); 
rect(xTrash,yTrash,50,50);
  }
  
void moveTrash(){
xTrash = xTrash + 5;
if(xTrash > 1850){ 
xTrash = 100;
yTrash = r;
    }
  }
  
void pushBackPlayer(){
if(xTrash > player.xPlayer && yTrash == player.yPlayer){
player.xPlayer = xTrash + 5; 
    }
  }
}

class Trash2{

public float r; 
public float xTrash2;
public float yTrash2;

Trash2() {
r = random(100,900); 
xTrash2 = 250; 
yTrash2 = 250; 
}

void spawn(){
fill(0); 
rect(xTrash2,yTrash2,50,50);
}
  
void moveTrash(){
xTrash2 = xTrash2 + 5;
if(xTrash2 > 1850){ 
xTrash2 = 100;
yTrash2 = r;
    }  
  }
  
void pushBackPlayer(){
if(xTrash2 > player.xPlayer && yTrash2 == player.yPlayer){
player.xPlayer = xTrash2 + 5; 
    }
  }  
}

class Trash3{

public float r; 
public float xTrash3;
public float yTrash3;

Trash3() {
r = random(100,900); 
xTrash3 = 450; 
yTrash3 = 450; 
}

void spawn(){
fill(0); 
rect(xTrash3,yTrash3,50,50);
}
  
void moveTrash(){
xTrash3 = xTrash3 + 5;
if(xTrash3 > 1850){ 
xTrash3 = 100;
yTrash3 = r;
    }  
  }

void pushBackPlayer(){
if(xTrash3 > player.xPlayer && yTrash3 == player.yPlayer){
player.xPlayer = xTrash3 + 5; 
    }
  }  
}

class Trash4{

public float r; 
public float xTrash4;
public float yTrash4;

Trash4() {
r = random(100,900); 
xTrash4 = 650; 
yTrash4 = 650; 
}

void spawn(){
fill(0); 
rect(xTrash4,yTrash4,50,50);
}
  
void moveTrash(){
xTrash4 = xTrash4 + 5;
if(xTrash4 > 1850){ 
xTrash4 = 100;
yTrash4 = r;
    }  
  }
  
void pushBackPlayer(){
if(xTrash4 > player.xPlayer && yTrash4 == player.yPlayer){
player.xPlayer = xTrash4 + 5; 
    }
  }  
}

class Trash5{

public float r; 
public float xTrash5;
public float yTrash5;

Trash5() {
r = random(100,900); 
xTrash5 = 850; 
yTrash5 = 850; 
}

void spawn(){
fill(0); 
rect(xTrash5,yTrash5,50,50);
}
  
void moveTrash(){
xTrash5 = xTrash5 + 5;
if(xTrash5 > 1850){ 
xTrash5 = 100;
yTrash5 = r;
    }  
  }
  
void pushBackPlayer(){
if(xTrash5 > player.xPlayer && yTrash5 == player.yPlayer){
player.xPlayer = xTrash5 + 5; 
    }
  }  
}

class Trash6{

public float r; 
public float xTrash6;
public float yTrash6;

Trash6() {
r = random(100,900); 
xTrash6 = 1050; 
yTrash6 = 650; 
}

void spawn(){
fill(0); 
rect(xTrash6,yTrash6,50,50);
}
  
void moveTrash(){
xTrash6 = xTrash6 + 5;
if(xTrash6 > 1850){ 
xTrash6 = 100;
yTrash6 = r;
    }  
  }
  
void pushBackPlayer(){
if(xTrash6 > player.xPlayer && yTrash6 == player.yPlayer){
player.xPlayer = xTrash6 + 5; 
    }
  }  
}

class Trash7{

public float r; 
public float xTrash7;
public float yTrash7;

Trash7() {
r = random(100,900); 
xTrash7 = 1250; 
yTrash7 = 450; 
}

void spawn(){
fill(0); 
rect(xTrash7,yTrash7,50,50);
}
  
void moveTrash(){
xTrash7 = xTrash7 + 5;
if(xTrash7 > 1850){ 
xTrash7 = 100;
yTrash7 = r;
    }  
  }
  
void pushBackPlayer(){
if(xTrash7 > player.xPlayer && yTrash7 == player.yPlayer){
player.xPlayer = xTrash7 + 5; 
    }
  }  
}

class Trash8{

public float r; 
public float xTrash8;
public float yTrash8;

Trash8() {
r = random(100,900); 
xTrash8 = 1450; 
yTrash8 = 250; 
}

void spawn(){
fill(0); 
rect(xTrash8,yTrash8,50,50);
}
  
void moveTrash(){
xTrash8 = xTrash8 + 5;
if(xTrash8 > 1850){ 
xTrash8 = 100;
yTrash8 = r;
    }  
  }
  
void pushBackPlayer(){
if(xTrash8 > player.xPlayer && yTrash8 == player.yPlayer){
player.xPlayer = xTrash8 + 5; 
    }
  }  
}

class Player{

public float xPlayer;
public float yPlayer; 

Player() {
xPlayer = 1900;
yPlayer = 500;
}


void spawn(){
fill(0); 
rect(xPlayer,yPlayer,50,50);
}

void movePlayer(){
if(key == 'a'){
  xPlayer = xPlayer - 5;
  } else 
if(key == 'w'){
  yPlayer = yPlayer - 5;
  } else
if(key == 's'){
  yPlayer = yPlayer + 5;
  }  
 }
}
