//Receives data over Serial port from Processing to control 2 LEDS
//Hook up LEDs to pins 4 and 8;


byte val; // stores data received from serial port
const int SENSOR = A0; //sensor hooked up to analog pin A0
const int LED1 = 4; // variable for which pin
const int LED2 = 7; // variable for which pin
const int LED3 = 8; // variable for which pin


void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  pinMode(LED3, OUTPUT); 
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  val = analogRead(SENSOR); //read sensor and assign to variable called val
  val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(100); // Wait 100 milliseconds
  /*
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }*/
  if (val > 0 && val <  85) { // If 0 received
    digitalWrite(LED1, HIGH); // turn LEDs off
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    
  }
  else if ( val > 86 && val < 170) {
    digitalWrite(LED1, LOW); // 
    digitalWrite(LED2, HIGH); // 
    digitalWrite(LED3, LOW);
  }
   else if ( val > 171 && val < 254)
   {
    digitalWrite(LED1, LOW); // 
    digitalWrite(LED2, LOW); // 
    digitalWrite(LED3, HIGH);
  }
  else if ( val == 255) { // 
    digitalWrite(LED1, HIGH); // 
    digitalWrite(LED2, HIGH); // 
    digitalWrite(LED3, HIGH);
  }
  delay(10); // Wait 10 milliseconds
  Serial.write(val);  //to send binary data to Processing
}
