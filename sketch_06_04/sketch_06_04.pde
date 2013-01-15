//sketch 06-04

int inputPin = 5;
int ledPin = 13;

void setup()
{
  pinMode(ledPin, OUTPUT);
  pinMode(inputPin, INPUT);
  digitalWrite(inputPin, HIGH);
}

void loop()
{
  int switchOpen = digitalRead(inputPin);
  digitalWrite(ledPin, ! switchOpen);
}
