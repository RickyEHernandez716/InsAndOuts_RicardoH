const int upPin = 13;// the number of the pushbutton pin
const int forwardPin = 12;
const int downPin = 4;
const int resetPin = 2;
int upState = 0;  // variable for reading the pushbutton status
int forwardState = 0;
int downState = 0;
int resetState = 0;

void setup() {
// initialize the pushbutton pin as an input:
Serial.begin(9600);
pinMode(upPin, INPUT);
pinMode(forwardPin, INPUT);
pinMode(downPin, INPUT);
pinMode(resetPin, INPUT);
}

void loop() {
// read the state of the pushbutton value:
upState = digitalRead(upPin);
forwardState = digitalRead(forwardPin);
downState = digitalRead(downPin);
resetState = digitalRead(resetPin);

// check if the pushbutton is pressed. If it is, the buttonState is HIGH:
if (upState == HIGH) {
Serial.write(1); 
} else 
if (forwardState == HIGH) {
Serial.write(2); 
} else 
if (downState == HIGH) {
Serial.write(3); 
} else 
if (resetState == HIGH) {
Serial.write(4); 
} else {
Serial.write(0); 
} 
 
}
