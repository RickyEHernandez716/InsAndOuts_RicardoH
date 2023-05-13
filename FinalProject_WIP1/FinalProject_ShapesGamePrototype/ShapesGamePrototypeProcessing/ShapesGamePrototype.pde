import processing.serial.*;  //import Serial library
Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

//Set pins to variables to be read by arduino
public int buttonUp = 2; 
public int buttonForward = 4;
public int buttonDown = 7; 
public int reset = 8;
public int bState; 



Shapes[] trash = new Shapes[1];
Player player; 

void setup(){
size(1000,1000);
//Arduino/Processing Connection Setup
printArray(Serial.list()); // this line prints the port list to the console
String portName = Serial.list()[0]; //change the number in the [] for the port you need
myPort = new Serial(this, portName, 9600);

//Initialize Trash Array Objects
for(int i = 0; i < trash.length; i++){
trash[i] = new Shapes();
}

//Initialize Player Objects
player = new Player();
}

void draw(){
background(155);

if ( myPort.available() > 0) { // If data is available,
bState = myPort.read(); // read it and store it in val
}


for(int i = 0; i < trash.length; i= i+1){
trash[i].spawnTrash();
trash[i].moveTrash();
}

player.spawnPlayer();
player.movePlayer();
player.pushPlayerBack();

}
