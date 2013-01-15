int inputPin = 5;
int ledPin = 13;
int ledValue = LOW;

void setup() 
{
  pinMode(inputPin, INPUT);
  digitalWrite(inputPin, HIGH);
  pinMode(ledPin, OUTPUT);
}

void loop() 
{
  if (digitalRead(inputPin) == LOW)
  {
     ledValue = ! ledValue;
     digitalWrite(ledPin, ledValue);
     delay(500);
  }
}

