//sketch 06-03

int inputPin = 5;

void setup()
{
  pinMode(inputPin, INPUT);
  digitalWrite(inputPin, HIGH);
  Serial.begin(9600);
}

void loop()
{
  int reading = digitalRead(inputPin);
  Serial.println(reading);
  delay(1000);
}
