//sketch 07-02

void setup()
{
  Serial.begin(9600);
  randomSeed(analogRead(0));
}

void loop()
{
  int number = random(1, 7);
  Serial.println(number);
  delay(500); 
}
