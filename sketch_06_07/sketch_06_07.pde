//sketch 06-07

#include <Bounce.h>

int inputPin = 5;
int ledPin = 13;

int ledValue = LOW;
Bounce bouncer = Bounce(inputPin, 5); 

void setup() 
{
  pinMode(inputPin, INPUT);
  digitalWrite(inputPin, HIGH);
  pinMode(ledPin, OUTPUT);
}

void loop() 
{
   if (bouncer.update() && bouncer.read() == LOW) 
   {
       ledValue = ! ledValue;
       digitalWrite(ledPin, ledValue);
   }
}

