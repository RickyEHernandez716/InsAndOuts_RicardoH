/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(400, 400);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
if (val > 0 && val <  85){
//bottom left  
fill(237,234,127);
for(int x = 20; x < width; x +=50){
for(int y = 60; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
  }
}
  } else if ( val > 86 && val < 170){
//top triangle
fill(237,234,127);
for(int x = 30; x < width; x +=50){
for(int y = 40; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
  } 
} 
  } else if ( val > 171 && val < 255){
//bottom right
fill(237,234,127);
for(int x = 40; x < width; x +=50){
for(int y = 60; y < height; y +=50){ 
triangle(x, y, x+10, y-20, x+20, y);
    }  
  }
  } 
}

/*
  //draws an ellipse that grows and shrinks in relation to val
  background(255);
  fill (0);
  ellipse (width/2, height/2, val, val);
  println (val); //prints to Processing console
*/
