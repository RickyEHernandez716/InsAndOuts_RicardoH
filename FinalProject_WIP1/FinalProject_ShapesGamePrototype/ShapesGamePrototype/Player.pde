public class Player {

public int x; 
public int y;

Shapes shape = new Shapes();

Player() {
  x = 950;
  y = height/3;

}

void spawnPlayer(){
rect(x, y, 50, 50);
  }

void movePlayer(){
if(keyPressed == true){
if(key == 'a'){
  x = x - 5;
  } else 
if(key == 'w'){
  y = y - 5;
  } else
if(key == 's'){
  y = y + 5;
  }  
 }
}  

void pushPlayerBack(){
if(){
  x = x + 5;
  }
}

}
