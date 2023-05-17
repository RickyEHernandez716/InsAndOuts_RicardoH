import processing.serial.*;
class Player {

public int x; 
public int y;

Shapes shape;

Player() {
  x = 950;
  y = height/3;

}

void spawnPlayer(){
rect(x, y, 50, 50);
  }

void movePlayer(){
if ( myPort.available() > 0) { // If data is available,
bState = myPort.read(); // read it and store it in val
if(bState == 'U'){
  x = x - 5;
  } else 
if(bState == 'F'){
  y = y - 5;
  } else
if(bState == 'D'){
  y = y + 5;
  } 
 }  
}

/*void pushPlayerBack(){
if(shape.x < x && shape.y == y){
  x = x + 5;
  } else
  {
  x = x - 5;
  }
}*/

}
