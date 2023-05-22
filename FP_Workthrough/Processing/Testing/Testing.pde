//This piece of code (lines 2-5) is borrowed from the Short Studies to connect to Arduino
import processing.serial.*;  //import Serial library
Serial myPort;  // create object from Serial class
int val=0;
//Player Variables
float xPlayer = 300;
float yPlayer = 300;
float wPlayer = 50; 
float hPlayer = 50;
//Trash Variables
float xTrash = 0;
float yTrash = 300;
float wTrash = 50; 
float hTrash = 50;


void setup(){
size(1500,500);


printArray(Serial.list()); // prints port list to the console
String portName = Serial.list()[0]; //change to match your port
myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud

}

void draw(){
background(155);
fill(0); 
rect(xPlayer,yPlayer,wPlayer,hPlayer);  
rect(xTrash,yTrash,wTrash,hTrash);
  
while ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    if(val == 1){
    yPlayer = yPlayer - 1;
    //hPlayer = hPlayer - 1;
    println(1);
    } else 
    if (val == 2){
    xPlayer = xPlayer - 1;  
    //wPlayer = wPlayer - 1; 
    println(2);
    } else 
    if (val == 3){
     yPlayer = yPlayer + 1; 
     //hPlayer = hPlayer + 1; 
     println(3);
    } else 
    if (val == 4){
     println(4);
    } else {
    println(0);
 }
}

xTrash++;

//The logic behind the very complicated coditional for collision detection waas explained on http://www.jeffreythompson.org/collision-detection/rect-rect.php
if(xPlayer + wPlayer >= xTrash && xPlayer <= xTrash + wTrash && yPlayer + hPlayer >= yTrash && yPlayer <= yTrash + hTrash){
xPlayer = xTrash; 
}


}
