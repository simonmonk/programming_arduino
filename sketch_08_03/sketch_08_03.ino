// sketch 08-03
#include <EEPROM.h>

void setup()                 
{
  Serial.begin(9600);
  Serial.println("Clearing EEPROM");
  for (int i = 0; i < 1023; i++)
  {
    EEPROM.write(i, 0);
  }
  Serial.println("EEPROM Cleared");
}

void loop()                    
{
}

