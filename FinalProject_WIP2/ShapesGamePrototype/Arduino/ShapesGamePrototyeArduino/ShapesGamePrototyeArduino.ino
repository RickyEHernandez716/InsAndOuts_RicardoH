int bUp = 2;
int bForward = 4;
int bDown = 7;
int reset = 8; 
int upState;
int forwardState;
int downState;
int resetState;

void setup() {
// put your setup code here, to run once:
Serial.begin(9600);
pinMode(bUp,INPUT);
pinMode(bForward,INPUT);
pinMode(bDown,INPUT);
pinMode(reset,INPUT);
}

void loop() {
upState = digitalRead(bUp);
forwardState = digitalRead(bForward);
downState = digitalRead(bDown);
resetState = digitalRead(reset);


// put your main code here, to run repeatedly
if(upState == HIGH){
Serial.write(1);
} else if(forwardState == HIGH){
Serial.write(2);
} else if(downState == HIGH){
Serial.write(3);
} else if(resetState == HIGH){
Serial.write(4);
}

}
