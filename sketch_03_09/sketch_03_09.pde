// sketch 03-09
int ledPin = 13;
int delayPeriod = 250;
int count = 0;

void setup()
{
  pinMode(ledPin, OUTPUT);
}

void loop()
{
 digitalWrite(ledPin, HIGH);
 delay(delayPeriod);
 digitalWrite(ledPin, LOW);
 delay(delayPeriod);
 count ++;
 if (count == 20)
 {
   count = 0;
   delay(3000);
 }
}

