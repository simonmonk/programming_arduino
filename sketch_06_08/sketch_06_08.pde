//sketch 06-08

int outputPin = 3;

void setup()
{
  pinMode(outputPin, OUTPUT);
  Serial.begin(9600);
  Serial.println("Enter Volts 0 to 5");
}

void loop()
{
  if (Serial.available() > 0)
  {
    char ch = Serial.read();
    int volts = (ch - '0') * 51;
    analogWrite(outputPin, volts);
  }
}
