// sketch 08-01
#include <avr/pgmspace.h>
int ledPin = 13;
int dotDelay = 200;

PROGMEM prog_char sA[]  = ".-";
PROGMEM prog_char sB[]  = "-...";
PROGMEM prog_char sC[]  = "-.-.";
PROGMEM prog_char sD[]  = "-..";
PROGMEM prog_char sE[]  = ".";
PROGMEM prog_char sF[]  = "..-.";
PROGMEM prog_char sG[]  = "--.";
PROGMEM prog_char sH[]  = "....";
PROGMEM prog_char sI[]  = "..";
PROGMEM prog_char sJ[]  = ".---";
PROGMEM prog_char sK[]  = "-.-";
PROGMEM prog_char sL[]  = ".-..";
PROGMEM prog_char sM[]  = "--";
PROGMEM prog_char sN[]  = "-.";
PROGMEM prog_char sO[]  = "---";
PROGMEM prog_char sP[]  = ".--.";
PROGMEM prog_char sQ[]  = "--.-";
PROGMEM prog_char sR[]  = ".-.";
PROGMEM prog_char sS[]  = "...";
PROGMEM prog_char sT[]  = "-";
PROGMEM prog_char sU[]  = "..-";
PROGMEM prog_char sV[]  = "...-";
PROGMEM prog_char sW[]  = ".--";
PROGMEM prog_char sX[]  = "-..-";
PROGMEM prog_char sY[]  = "-.--";
PROGMEM prog_char sZ[]  = "--..";

PROGMEM const char* letters[] = {sA, sB, sC, sD, sE, sF, sG, sH, sI, sJ, sK, sL, sM,
                                sN, sO, sP, sQ, sR, sS, sT, sU, sV, sW, sX, sY, sZ};

PROGMEM prog_char s0[]  = "-----";
PROGMEM prog_char s1[]  = ".----";
PROGMEM prog_char s2[]  = "..---";
PROGMEM prog_char s3[]  = "...--";
PROGMEM prog_char s4[]  = "....-";
PROGMEM prog_char s5[]  = ".....";
PROGMEM prog_char s6[]  = "-....";
PROGMEM prog_char s7[]  = "--...";
PROGMEM prog_char s8[]  = "---..";
PROGMEM prog_char s9[]  = "----.";


PROGMEM const char* numbers[] = {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9};

char buffer[6];

void setup()                 
{
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop()                    
{
  char ch;
  if (Serial.available() > 0)
  {
    ch = Serial.read();
    if (ch >= 'a' && ch <= 'z')
    {
      strcpy_P(buffer, (char*)pgm_read_word(&(letters[ch - 'a'])));
      flashSequence(buffer);
    }
    else if (ch >= 'A' && ch <= 'Z')
    {
      strcpy_P(buffer, (char*)pgm_read_word(&(letters[ch - 'A'])));
      flashSequence(buffer);
    }
    else if (ch >= '0' && ch <= '9')
    {
      strcpy_P(buffer, (char*)pgm_read_word(&(letters[ch - '0'])));
      flashSequence(buffer);
    }
    else if (ch == ' ')
    {
      delay(dotDelay * 4);  // gap between words  
    }
  }
}

void flashSequence(char* sequence)
{
   int i = 0;
   while (sequence[i] != NULL)
   {
       flashDotOrDash(sequence[i]);
       i++;
   }
   delay(dotDelay * 3);    // gap between letters
}

void flashDotOrDash(char dotOrDash)
{
  digitalWrite(ledPin, HIGH);
  if (dotOrDash == '.')
  {
    delay(dotDelay);           
  }
  else // must be a dash
  {
    delay(dotDelay * 3);           
  }
  digitalWrite(ledPin, LOW);    
  delay(dotDelay); // gap between flashes
}


