
import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port
int x = 1400;
int y = 250;
int x1 = 0;
int y1 = 250;

void setup() {
  size(1500, 500);

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(0);
 rect(x,y,50,50);
 rect(x1, y1, 50, 50); 
 moveX1();
 pushBack();
  
  
  
  while ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    if(val == 1){
    y = y - 1;
    println(1);
    } else 
    if (val == 2){
    x = x - 1;  
    println(2);
    } else 
    if (val == 3){
     y = y + 1; 
     println(3);
    } else 
    if (val == 4){
     println(4);
    } else {
    println(0);
    }
  }
}

void moveX1(){
  x1 = x1 + 1;
}

void pushBack(){
if(x1 >= x && y1 == y){
  x = x1;
  } else {
    x = x;
    y = y;
  }
 }
