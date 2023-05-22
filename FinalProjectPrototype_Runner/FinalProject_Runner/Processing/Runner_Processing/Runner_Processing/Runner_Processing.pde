//This piece of code (lines 2-5) is borrowed from the Short Studies to connect to Arduino
import processing.serial.*;  //import Serial library
Serial myPort;  // create object from Serial class
int val=0;

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

//set up Serial communication
printArray(Serial.list()); // prints port list to the console
String portName = Serial.list()[0]; //change to match your port
myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud

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
//trash[i].pushBackPlayer();
}
for(int i = 0; i < trash2.length; i++){
trash2[i].spawn();
trash2[i].moveTrash();
//trash2[i].pushBackPlayer();
}
for(int i = 0; i < trash3.length; i++){
trash3[i].spawn();
trash3[i].moveTrash();
//trash3[i].pushBackPlayer();
}
for(int i = 0; i < trash4.length; i++){
trash4[i].spawn();
trash4[i].moveTrash();
//trash4[i].pushBackPlayer();
}
for(int i = 0; i < trash5.length; i++){
trash5[i].spawn();
trash5[i].moveTrash();
//trash5[i].pushBackPlayer();
}
for(int i = 0; i < trash6.length; i++){
trash6[i].spawn();
trash6[i].moveTrash();
//trash6[i].pushBackPlayer();
}
for(int i = 0; i < trash7.length; i++){
trash7[i].spawn();
trash7[i].moveTrash();
//trash7[i].pushBackPlayer();
}
for(int i = 0; i < trash8.length; i++){
trash8[i].spawn();
trash8[i].moveTrash();
//trash8[i].pushBackPlayer();
}
//Player Functions
player.spawn();
player.movePlayer();
player.pushPlayer();
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
  
}

class Player{

Trash v = new Trash();
Trash2 v2 = new Trash2();
Trash3 v3 = new Trash3();
Trash4 v4 = new Trash4();
Trash5 v5 = new Trash5();
Trash6 v6 = new Trash6();
Trash7 v7 = new Trash7();
Trash8 v8 = new Trash8();


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
while ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    if(val == 1){
    yPlayer = yPlayer - 1;
    println(1);
    } else 
    if (val == 2){
    xPlayer = xPlayer - 1;  
    println(2);
    } else 
    if (val == 3){
     yPlayer = yPlayer + 1; 
     println(3);
    } else 
    if (val == 4){
     println(4);
    } else {
    println(0);
   }
  }
 }
 
void pushPlayer(){
if(xPlayer == v.xTrash  && yPlayer == v.yTrash){
 xPlayer = v.xTrash;
} else
if(xPlayer == v2.xTrash2  && yPlayer == v2.yTrash2){
 xPlayer = v2.xTrash2;
} else
if(xPlayer == v3.xTrash3  && yPlayer == v3.yTrash3){
 xPlayer = v3.xTrash3;
} else
if(xPlayer == v4.xTrash4  && yPlayer == v4.yTrash4){
 xPlayer = v4.xTrash4;
} else
if(xPlayer == v5.xTrash5  && yPlayer == v5.yTrash5){
 xPlayer = v5.xTrash5;
} else
if(xPlayer == v6.xTrash6  && yPlayer == v6.yTrash6){
 xPlayer = v6.xTrash6;
} else
if(xPlayer == v7.xTrash7  && yPlayer == v7.yTrash7){
 xPlayer = v7.xTrash7;
} else
if(xPlayer == v8.xTrash8  && yPlayer == v8.yTrash8){
 xPlayer = v8.xTrash8;
  }
 } 
}
