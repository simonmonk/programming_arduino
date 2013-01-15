// sketch 08-02
#include <EEPROM.h>

int addr = 0;
char ch;

void setup()                 
{
  Serial.begin(9600);
  ch = EEPROM.read(addr);
}

void loop()                    
{
  if (Serial.available() > 0)
  {
    ch = Serial.read();
    EEPROM.write(0, ch);
    Serial.println(ch);
  }
  Serial.println(ch);
  delay(1000);
}

