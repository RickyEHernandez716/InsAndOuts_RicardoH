int bUp = 2;
int bForward = 4;
int bDown = 7;
int reset = 8; 
int bState = 0;
int bState2 = 0;
int bState3 = 0;

void setup() {
// put your setup code here, to run once:
Serial.begin(9600);
pinMode(bUp,INPUT);
pinMode(bForward,INPUT);
pinMode(bDown,INPUT);
}

void loop() {
if(Serial.available()){
  bState = Serial.read();
  }
// put your main code here, to run repeatedly:
bState = digitalRead(bUp);
bState2 = digitalRead(bForward);
bState3 = digitalRead(bDown);

if(bState == HIGH){
Serial.write(bState);
  }

}
