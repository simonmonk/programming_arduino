//sketch 07-01

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  int number = random(1, 7);
  Serial.println(number);
  delay(500); 
}
