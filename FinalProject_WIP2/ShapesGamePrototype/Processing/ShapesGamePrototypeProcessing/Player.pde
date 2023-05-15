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
if(buttonUp == HIGH){
  x = x - 5;
  } else 
if(buttonForward == HIGH){
  y = y - 5;
  } else
if(buttonDown == HIGH){
  y = y + 5;
  } 
 }  
}

void pushPlayerBack(){
if(shape.x < x && shape.y == y){
  x = x + 5;
  } else
  {
  x = x - 5;
  }
}

}
