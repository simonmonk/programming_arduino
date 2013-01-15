//sketch 07-04

int interruptPin = 2;
int ledPin = 13;
int period = 500;

void setup()
{
  pinMode(ledPin, OUTPUT);
  pinMode(interruptPin, INPUT);
  digitalWrite(interruptPin, HIGH); // pullup
  attachInterrupt(0, goFast, FALLING);
}

void loop() 
{
  digitalWrite(ledPin, HIGH);
  delay(period);
  digitalWrite(ledPin, LOW);
  delay(period);  
}

void goFast()
{
  period = 100;
}
