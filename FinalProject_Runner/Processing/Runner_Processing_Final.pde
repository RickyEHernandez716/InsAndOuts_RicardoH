//This piece of code (lines 2-5) is borrowed from the Short Studies to connect to Arduino
import processing.serial.*;  //import Serial library
Serial myPort;  // create object from Serial class
int val=0;
//Random Variable
float rX = 50;
float rY;

//Player Variables
float xPlayer = 1250;
float yPlayer = 300;
float wPlayer = 50; 
float hPlayer = 50;

//SetOne
//Trash Variables
float xTrash = 100;
float yTrash = 50;
float wTrash = 50; 
float hTrash = 50;
//Trash2 Variables
float xTrash2 = 175;
float yTrash2 = 150;
float wTrash2 = 50; 
float hTrash2 = 50;
//Trash3 Variables
float xTrash3 = 250;
float yTrash3 = 250;
float wTrash3 = 50; 
float hTrash3 = 50;
//Trash4 Variables
float xTrash4 = 325;
float yTrash4 = 350;
float wTrash4 = 50; 
float hTrash4 = 50;
//Trash5 Variables
float xTrash5 = 400;
float yTrash5 = 450;
float wTrash5 = 50; 
float hTrash5 = 50;
//Trash6 Variables
float xTrash6 = 475;
float yTrash6 = 350;
float wTrash6 = 50; 
float hTrash6 = 50;
//Trash7 Variables
float xTrash7 = 550;
float yTrash7 = 250;
float wTrash7 = 50; 
float hTrash7 = 50;
//Trash8 Variables
float xTrash8 = 625;
float yTrash8 = 150;
float wTrash8 = 50; 
float hTrash8 = 50;
//Trash9 Variables
float xTrash9 = 700;
float yTrash9 = 50;
float wTrash9 = 50; 
float hTrash9 = 50;
//Trash10 Variables
float xTrash10 = 775;
float yTrash10 = 150;
float wTrash10 = 50; 
float hTrash10 = 50;
//Trash11 Variables
float xTrash11 = 850;
float yTrash11 = 250;
float wTrash11 = 50; 
float hTrash11 = 50;
//Trash12 Variables
float xTrash12 = 925;
float yTrash12 = 350;
float wTrash12 = 50; 
float hTrash12 = 50;
//Trash13 Variables
float xTrash13 = 1000;
float yTrash13 = 450;
float wTrash13 = 50; 
float hTrash13 = 50;
//Trash14 Variables
float xTrash14 = 1075;
float yTrash14 = 350;
float wTrash14 = 50; 
float hTrash14 = 50;
//Trash15 Variables
float xTrash15 = 1150;
float yTrash15 = 250;
float wTrash15 = 50; 
float hTrash15 = 50;

//SetTwo
float xTrash16 = 1225;
float yTrash16 = 50;
float wTrash16 = 50; 
float hTrash16 = 50;
//Trash2 Variables
float xTrash17 = 1300;
float yTrash17 = 150;
float wTrash17 = 50; 
float hTrash17 = 50;
//Trash3 Variables
float xTrash18 = 1300;
float yTrash18 = 450;
float wTrash18 = 50; 
float hTrash18 = 50;
//Trash4 Variables
float xTrash19 = 1225;
float yTrash19 = 350;
float wTrash19 = 50; 
float hTrash19 = 50;
//Trash5 Variables
float xTrash20 = 1150;
float yTrash20 = 250;
float wTrash20 = 50; 
float hTrash20 = 50;
//Trash6 Variables
float xTrash21 = 1075;
float yTrash21 = 150;
float wTrash21 = 50; 
float hTrash21 = 50;
//Trash7 Variables
float xTrash22 = 1000;
float yTrash22 = 250;
float wTrash22 = 50; 
float hTrash22 = 50;
//Trash8 Variables
float xTrash23 = 925;
float yTrash23 = 350;
float wTrash23 = 50; 
float hTrash23 = 50;
//Trash9 Variables
float xTrash24 = 850;
float yTrash24 = 450;
float wTrash24 = 50; 
float hTrash24 = 50;
//Trash10 Variables
float xTrash25 = 775;
float yTrash25 = 350;
float wTrash25 = 50; 
float hTrash25 = 50;
//Trash11 Variables
float xTrash26 = 700;
float yTrash26 = 250;
float wTrash26 = 50; 
float hTrash26 = 50;
//Trash12 Variables
float xTrash27 = 625;
float yTrash27 = 150;
float wTrash27 = 50; 
float hTrash27 = 50;
//Trash13 Variables
float xTrash28 = 550;
float yTrash28 = 250;
float wTrash28 = 50; 
float hTrash28 = 50;
//Trash14 Variables
float xTrash29 = 475;
float yTrash29 = 350;
float wTrash29 = 50; 
float hTrash29 = 50;
//Trash15 Variables
float xTrash30 = 400;
float yTrash30 = 450;
float wTrash30 = 50; 
float hTrash30 = 50;

void setup(){
size(1500,500);
rY = random(100,400);

printArray(Serial.list()); // prints port list to the console
String portName = Serial.list()[0]; //change to match your port
myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud

}

void draw(){
background(255);
fill(155);
rect(0,0,2000,1000);
fill(#36B74A);
rect(0,0,150,1000);
fill(#C12000);
rect(1350,0,150,1000);

//Win/LoseText
if(xPlayer <= 100){
fill(0);
textSize(18);
text("You Escpaed!", 50, height/2);
} else 
if(xPlayer >= 1350){
fill(0);
textSize(18);
text("You've been caught!", 1350, height/2);
}

//Object Setup
fill(0);
fill(#ED7554);
rect(xPlayer,yPlayer,wPlayer,hPlayer);  
fill(0);
rect(xTrash,yTrash,wTrash,hTrash);
rect(xTrash2,yTrash2,wTrash2,hTrash2);
rect(xTrash3,yTrash3,wTrash3,hTrash3);
rect(xTrash4,yTrash4,wTrash4,hTrash4);
rect(xTrash5,yTrash5,wTrash5,hTrash5);
rect(xTrash6,yTrash6,wTrash6,hTrash6);
rect(xTrash7,yTrash7,wTrash7,hTrash7);
rect(xTrash8,yTrash8,wTrash8,hTrash8);
rect(xTrash9,yTrash9,wTrash9,hTrash9);
rect(xTrash10,yTrash10,wTrash10,hTrash10);
rect(xTrash11,yTrash11,wTrash11,hTrash11);
rect(xTrash12,yTrash12,wTrash12,hTrash12);
rect(xTrash13,yTrash13,wTrash13,hTrash13);
rect(xTrash14,yTrash14,wTrash14,hTrash14);
rect(xTrash15,yTrash15,wTrash15,hTrash15); 
rect(xTrash16,yTrash16,wTrash16,hTrash16);
rect(xTrash17,yTrash17,wTrash17,hTrash17);
rect(xTrash18,yTrash18,wTrash18,hTrash18);
rect(xTrash19,yTrash19,wTrash19,hTrash19);
rect(xTrash20,yTrash20,wTrash20,hTrash20);
rect(xTrash21,yTrash21,wTrash21,hTrash21);
rect(xTrash22,yTrash22,wTrash22,hTrash22);
rect(xTrash23,yTrash23,wTrash23,hTrash23);
rect(xTrash24,yTrash24,wTrash24,hTrash24);
rect(xTrash25,yTrash25,wTrash25,hTrash25);
rect(xTrash26,yTrash26,wTrash26,hTrash26);
rect(xTrash27,yTrash27,wTrash27,hTrash27);
rect(xTrash28,yTrash28,wTrash28,hTrash28);
rect(xTrash29,yTrash29,wTrash29,hTrash29);
rect(xTrash30,yTrash30,wTrash30,hTrash30);

//Arduino Connection Setup  
while ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    if(val == 1){
    yPlayer = yPlayer - .5;
    //hPlayer = hPlayer - 1;
    println(1);
    } else 
    if (val == 2){
    xPlayer = xPlayer - .5;  
    //wPlayer = wPlayer - 1; 
    println(2);
    } else 
    if (val == 3){
     yPlayer = yPlayer + .5; 
     //hPlayer = hPlayer + 1; 
     println(3);
    } 
    else {
    println(0);
 }
}

moveTrash();
pushBack();
}



void moveTrash(){
xTrash++;
if(xTrash > 1350){ 
xTrash = 100;
}
xTrash2++;
if(xTrash2 > 1350){ 
xTrash2 = 100;
}
xTrash3++;
if(xTrash3 > 1350){ 
xTrash3 = 100;
}
xTrash4++;
if(xTrash4 > 1350){ 
xTrash4 = 100;
}
xTrash5++;
if(xTrash5 > 1350){ 
xTrash5 = 100;
}
xTrash6++;
if(xTrash6 > 1350){ 
xTrash6 = 100;
}
xTrash7++;
if(xTrash7 > 1350){ 
xTrash7 = 100;
}
xTrash8++;
if(xTrash8 > 1350){ 
xTrash8 = 100;
}
xTrash9++;
if(xTrash9 > 1350){ 
xTrash9 = 100;
}
xTrash10++;
if(xTrash10 > 1350){ 
xTrash10 = 100;
}
xTrash11++;
if(xTrash11 > 1350){ 
xTrash11 = 100;
}
xTrash12++;
if(xTrash12 > 1350){ 
xTrash12 = 100;
}
xTrash13++;
if(xTrash13 > 1350){ 
xTrash13 = 100;
}
xTrash14++;
if(xTrash14 > 1350){ 
xTrash14 = 100;
}
xTrash15++;
if(xTrash15 > 1350){ 
xTrash15 = 100;
}
xTrash16++;
if(xTrash16 > 1350){ 
xTrash16 = 100;
}
xTrash17++;
if(xTrash17 > 1350){ 
xTrash17 = 100;
}
xTrash18++;
if(xTrash18 > 1350){ 
xTrash18 = 100;
}
xTrash19++;
if(xTrash19 > 1350){ 
xTrash19 = 100;
}
xTrash20++;
if(xTrash20 > 1350){ 
xTrash20 = 100;
}
xTrash21++;
if(xTrash21 > 1350){ 
xTrash21 = 100;
}
xTrash22++;
if(xTrash22 > 1350){ 
xTrash22 = 100;
}
xTrash23++;
if(xTrash23 > 1350){ 
xTrash23 = 100;
}
xTrash24++;
if(xTrash24 > 1350){ 
xTrash24 = 100;
}
xTrash25++;
if(xTrash25 > 1350){ 
xTrash25 = 100;
}
xTrash26++;
if(xTrash26 > 1350){ 
xTrash26 = 100;
}
xTrash27++;
if(xTrash27 > 1350){ 
xTrash27 = 100;
}
xTrash28++;
if(xTrash28 > 1350){ 
xTrash28 = 100;
}
xTrash29++;
if(xTrash29 > 1350){ 
xTrash29 = 100;
}
xTrash30++;
if(xTrash30 > 1350){ 
xTrash30 = 100;
}
}


void pushBack(){
//The logic behind the very complicated coditional for collision detection waas explained on http://www.jeffreythompson.org/collision-detection/rect-rect.php
if(xPlayer + wPlayer >= xTrash && xPlayer <= xTrash + wTrash && yPlayer + hPlayer >= yTrash && yPlayer <= yTrash + hTrash){
xPlayer = xTrash; 
} else 
if(xPlayer + wPlayer >= xTrash2 && xPlayer <= xTrash2 + wTrash2 && yPlayer + hPlayer >= yTrash2 && yPlayer <= yTrash2 + hTrash2){
xPlayer = xTrash2; 
} else 
if(xPlayer + wPlayer >= xTrash3 && xPlayer <= xTrash3 + wTrash3 && yPlayer + hPlayer >= yTrash3 && yPlayer <= yTrash3 + hTrash3){
xPlayer = xTrash3; 
} else 
if(xPlayer + wPlayer >= xTrash4 && xPlayer <= xTrash4 + wTrash4 && yPlayer + hPlayer >= yTrash4 && yPlayer <= yTrash4 + hTrash4){
xPlayer = xTrash4; 
} else 
if(xPlayer + wPlayer >= xTrash5 && xPlayer <= xTrash5 + wTrash5 && yPlayer + hPlayer >= yTrash5 && yPlayer <= yTrash5 + hTrash5){
xPlayer = xTrash5; 
} else 
if(xPlayer + wPlayer >= xTrash6 && xPlayer <= xTrash6 + wTrash6 && yPlayer + hPlayer >= yTrash6 && yPlayer <= yTrash6 + hTrash6){
xPlayer = xTrash6; 
} else 
if(xPlayer + wPlayer >= xTrash7 && xPlayer <= xTrash7 + wTrash7 && yPlayer + hPlayer >= yTrash7 && yPlayer <= yTrash7 + hTrash7){
xPlayer = xTrash7; 
} else 
if(xPlayer + wPlayer >= xTrash8 && xPlayer <= xTrash8 + wTrash8 && yPlayer + hPlayer >= yTrash8 && yPlayer <= yTrash8 + hTrash8){
xPlayer = xTrash8; 
} else 
if(xPlayer + wPlayer >= xTrash9 && xPlayer <= xTrash9 + wTrash9 && yPlayer + hPlayer >= yTrash9 && yPlayer <= yTrash9 + hTrash9){
xPlayer = xTrash9; 
} else
if(xPlayer + wPlayer >= xTrash10 && xPlayer <= xTrash10 + wTrash10 && yPlayer + hPlayer >= yTrash10 && yPlayer <= yTrash10 + hTrash10){
xPlayer = xTrash10; 
} else 
if(xPlayer + wPlayer >= xTrash11 && xPlayer <= xTrash11 + wTrash11 && yPlayer + hPlayer >= yTrash11 && yPlayer <= yTrash11 + hTrash11){
xPlayer = xTrash11; 
} else 
if(xPlayer + wPlayer >= xTrash12 && xPlayer <= xTrash12 + wTrash12 && yPlayer + hPlayer >= yTrash12 && yPlayer <= yTrash12 + hTrash12){
xPlayer = xTrash12; 
} else 
if(xPlayer + wPlayer >= xTrash13 && xPlayer <= xTrash13 + wTrash13 && yPlayer + hPlayer >= yTrash13 && yPlayer <= yTrash13 + hTrash13){
xPlayer = xTrash13; 
} else 
if(xPlayer + wPlayer >= xTrash14 && xPlayer <= xTrash14 + wTrash14 && yPlayer + hPlayer >= yTrash14 && yPlayer <= yTrash14 + hTrash14){
xPlayer = xTrash14; 
} else 
if(xPlayer + wPlayer >= xTrash15 && xPlayer <= xTrash15 + wTrash15 && yPlayer + hPlayer >= yTrash15 && yPlayer <= yTrash15 + hTrash15){
xPlayer = xTrash15; 
} else 
if(xPlayer + wPlayer >= xTrash16 && xPlayer <= xTrash16 + wTrash16 && yPlayer + hPlayer >= yTrash16 && yPlayer <= yTrash16 + hTrash16){
xPlayer = xTrash16; 
} else 
if(xPlayer + wPlayer >= xTrash17 && xPlayer <= xTrash17 + wTrash17 && yPlayer + hPlayer >= yTrash17 && yPlayer <= yTrash17 + hTrash17){
xPlayer = xTrash17; 
} else 
if(xPlayer + wPlayer >= xTrash18 && xPlayer <= xTrash18 + wTrash18 && yPlayer + hPlayer >= yTrash18 && yPlayer <= yTrash18 + hTrash18){
xPlayer = xTrash18; 
} else 
if(xPlayer + wPlayer >= xTrash19 && xPlayer <= xTrash19 + wTrash19 && yPlayer + hPlayer >= yTrash19 && yPlayer <= yTrash19 + hTrash19){
xPlayer = xTrash19; 
} else 
if(xPlayer + wPlayer >= xTrash20 && xPlayer <= xTrash20 + wTrash20 && yPlayer + hPlayer >= yTrash20 && yPlayer <= yTrash20 + hTrash20){
xPlayer = xTrash20; 
} else 
if(xPlayer + wPlayer >= xTrash21 && xPlayer <= xTrash21 + wTrash21 && yPlayer + hPlayer >= yTrash21 && yPlayer <= yTrash21 + hTrash21){
xPlayer = xTrash21; 
} else 
if(xPlayer + wPlayer >= xTrash22 && xPlayer <= xTrash22 + wTrash22 && yPlayer + hPlayer >= yTrash22 && yPlayer <= yTrash22 + hTrash22){
xPlayer = xTrash22; 
} else 
if(xPlayer + wPlayer >= xTrash23 && xPlayer <= xTrash23 + wTrash23 && yPlayer + hPlayer >= yTrash23 && yPlayer <= yTrash23 + hTrash23){
xPlayer = xTrash23; 
} else 
if(xPlayer + wPlayer >= xTrash24 && xPlayer <= xTrash24 + wTrash24 && yPlayer + hPlayer >= yTrash24 && yPlayer <= yTrash24 + hTrash24){
xPlayer = xTrash24; 
} else 
if(xPlayer + wPlayer >= xTrash25 && xPlayer <= xTrash25 + wTrash25 && yPlayer + hPlayer >= yTrash25 && yPlayer <= yTrash25 + hTrash25){
xPlayer = xTrash25; 
} else 
if(xPlayer + wPlayer >= xTrash26 && xPlayer <= xTrash26 + wTrash26 && yPlayer + hPlayer >= yTrash26 && yPlayer <= yTrash26 + hTrash26){
xPlayer = xTrash26; 
} else 
if(xPlayer + wPlayer >= xTrash27 && xPlayer <= xTrash27 + wTrash27 && yPlayer + hPlayer >= yTrash27 && yPlayer <= yTrash27 + hTrash27){
xPlayer = xTrash27; 
} else 
if(xPlayer + wPlayer >= xTrash28 && xPlayer <= xTrash28 + wTrash28 && yPlayer + hPlayer >= yTrash28 && yPlayer <= yTrash28 + hTrash28){
xPlayer = xTrash28; 
} else 
if(xPlayer + wPlayer >= xTrash29 && xPlayer <= xTrash29 + wTrash29 && yPlayer + hPlayer >= yTrash29 && yPlayer <= yTrash29 + hTrash29){
xPlayer = xTrash29; 
} else 
if(xPlayer + wPlayer >= xTrash30 && xPlayer <= xTrash30 + wTrash15 && yPlayer + hPlayer >= yTrash30 && yPlayer <= yTrash30 + hTrash30){
xPlayer = xTrash30; 
} 

}
