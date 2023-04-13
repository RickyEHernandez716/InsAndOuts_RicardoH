/*
 The following code assigns certain LED lights to be turned
 on when button is pressed once and proceed to do a pattern 
 if pressed again and turns off when pressed a third time.
 */

const int LED1 = 13; //Creates variable called LED and assigns value of 13. (const assigned if int is never going to change.)
const int LED2 = 12; //Creates variable called LED and assigns value of 13. (const assigned if int is never going to change.)
const int LED3 = 11; //Creates variable called LED and assigns value of 13. (const assigned if int is never going to change.)
const int LED4 = 10; //Creates variable called LED and assigns value of 13. (const assigned if int is never going to change.)
const int LED5 = 9; //Creates variable called LED and assigns value of 13. (const assigned if int is never going to change.)
const int LED6 = 8; //Creates variable called LED and assigns value of 13. (const assigned if int is never going to change.)
const int ButtonPin = 2;// Creates variable called PinButton and assigns value of 2. (const assigned if int is never going to change.)
int ButtonState = 0; //Creates variable called ButtonState used to track whether on or off. assigned initial value of 0.

void setup() {
  // put your setup code here, to run once:
pinMode(13,OUTPUT);//initilaize pin as output.
pinMode(12,OUTPUT);//initilaize pin as output.
pinMode(11,OUTPUT);//initilaize pin as output.
pinMode(10,OUTPUT);//initilaize pin as output.
pinMode(9,OUTPUT);//initilaize pin as output.
pinMode(8,OUTPUT);//initilaize pin as output.
pinMode(ButtonPin, INPUT);//initilazie button as input 

}

void loop() {
ButtonState = digitalRead(ButtonPin); // read state of the pushbutton value
delay(10); // small delay for debouncing, to increase accuracy 

if(ButtonState == 1){
  digitalWrite(LED1, 1); //Sends voltage to pin
  digitalWrite(LED3, 1); //Sends voltage to pin
  digitalWrite(LED5, 1); //Sends voltage to pin
  delay(3000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED1, 0); //Sends voltage to pin
  digitalWrite(LED3, 0); //Sends voltage to pin
  digitalWrite(LED5, 0); //Sends voltage to pin
  delay(1500); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED2, 1); //Sends voltage to pin
  digitalWrite(LED4, 1); //Sends voltage to pin
  digitalWrite(LED6, 1); //Sends voltage to pin
  delay(1500); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED2, 0); //Sends voltage to pin
  digitalWrite(LED4, 0); //Sends voltage to pin
  digitalWrite(LED6, 0); //Sends voltage to pin
  delay(1500); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED1, 1); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED1, 0); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED2, 1); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED2, 0); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED3, 1); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED3, 0); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED4, 1); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED4, 0); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED5, 1); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED5, 0); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED6, 1); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED6, 0); //Sends voltage to pin
  delay(1000); // Delays 1000 milliseconds or 1 second
  digitalWrite(LED1, 1); //Sends voltage to pin
  digitalWrite(LED2, 1); //Sends voltage to pin
  digitalWrite(LED3, 1); //Sends voltage to pin
  digitalWrite(LED4, 1); //Sends voltage to pin
  digitalWrite(LED5, 1); //Sends voltage to pin
  digitalWrite(LED6, 1); //Sends voltage to pin
  delay(1500);
  }else{
  digitalWrite(LED1, 0); //Sends voltage to pin
  digitalWrite(LED2, 0); //Sends voltage to pin
  digitalWrite(LED3, 0); //Sends voltage to pin
  digitalWrite(LED4, 0); //Sends voltage to pin
  digitalWrite(LED5, 0); //Sends voltage to pin
  digitalWrite(LED6, 0); //Sends voltage to pin
    }
  }
/*  
  // put your main code here, to run repeatedly:
digitalWrite(LED1, 1); //Sends voltage to pin
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED1, 0); //Stops sending voltage to pin 
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED2, 1); //Sends voltage to pin
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED2, 0); //Stops sending voltage to pin 
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED3, 1); //Sends voltage to pin
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED3, 0); //Stops sending voltage to pin 
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED4, 1); //Sends voltage to pin
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED4, 0); //Stops sending voltage to pin 
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED5, 1); //Sends voltage to pin
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED5, 0); //Stops sending voltage to pin 
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED6, 1); //Sends voltage to pin
delay(1000);// Delays 1000 milliseconds or 1 second
digitalWrite(LED6, 0); //Stops sending voltage to pin 
delay(1000);// Delays 1000 milliseconds or 1 second
*/
