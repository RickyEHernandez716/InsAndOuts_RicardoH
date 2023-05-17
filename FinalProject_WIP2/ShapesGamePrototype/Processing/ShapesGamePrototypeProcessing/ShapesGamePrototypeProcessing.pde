import processing.serial.*;  //import Serial library
Serial myPort; // creates object from Serial class

//Set pins to variables to be read by arduino
public int buttonUp = 2; //Stores Serial Data For First Button
public int buttonForward = 4;//Stores Serial Data For Second Button 
public int buttonDown = 7; //Stores Serial Data For Third  Button 
public int reset = 8;//Stores Serial Data For Fourth Button 
public int bState; // Stores Value Of Button States From Arduino 



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
println(bState);

if ( myPort.available() > 0) { // If data is available,
bState = myPort.read(); // read it and store it in bState
}


for(int i = 0; i < trash.length; i= i+1){
trash[i].spawnTrash();
trash[i].moveTrash();
}

player.spawnPlayer();
player.movePlayer();
//player.pushPlayerBack();

}
