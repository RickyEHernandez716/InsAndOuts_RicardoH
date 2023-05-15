int bUp = 2;
int bForward = 4;
int bDown = 7;
int reset = 8; 
int bState;
int pinNumber; 

void setup() {
// put your setup code here, to run once:
Serial.begin(9600);
pinMode(bUp,INPUT);
pinMode(bForward,INPUT);
pinMode(bDown,INPUT);
pinMode(reset,INPUT);
}

void loop() {
bState = digitalRead(bUp);
bState = digitalRead(bForward);
bState = digitalRead(bDown);
bState = digitalRead(reset);
  
if(Serial.available()){
bState = Serial.read();
}

// put your main code here, to run repeatedly
if(bState == HIGH  && pinNumber ==2 || pinNumber == 4 || pinNumber == 7 || pinNumber == 8){}
Serial.write(bState);
}
