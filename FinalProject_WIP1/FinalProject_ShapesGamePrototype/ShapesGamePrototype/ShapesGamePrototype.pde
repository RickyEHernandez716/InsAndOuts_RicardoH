import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class


Shapes[] trash = new Shapes[1];
Player player; 

void setup(){
size(1000,1000);
for(int i = 0; i < trash.length; i++){
trash[i] = new Shapes();
player = new Player();

 //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
  }
}

void draw(){
background(155);
for(int i = 0; i < trash.length; i= i+1){
trash[i].spawnTrash();
trash[i].moveTrash();
player.spawnPlayer();
player.movePlayer();
player.pushPlayerBack();
  }
}
