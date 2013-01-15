// sketch 10-01 Simple Server Example

#include <SPI.h>
#include <Ethernet.h>


// MAC address just has to be unique. This should work
byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
// The IP address will be dependent on your local network:
byte ip[] = { 192, 168, 1, 30 };

EthernetServer server(80);

void setup()
{
  Ethernet.begin(mac, ip);
  server.begin();
  Serial.begin(9600);
}

void loop()
{
  // listen for incoming clients
  EthernetClient client = server.available();
  if (client) 
  {
    while (client.connected()) 
    {
      // send a standard http response header
      client.println("HTTP/1.1 200 OK");
      client.println("Content-Type: text/html");
      client.println();
      
      // send the body
      client.println("<html><body>");
      client.println("<h1>Arduino Server</h1>");
      client.print("<p>A0="); 
      client.print(analogRead(0)); 
      client.println("</p>"); 
      client.print("<p>millis="); 
      client.print(millis()); 
      client.println("</p>"); 
      client.println("</body></html>");
      client.stop();
    }
    delay(1);
  }
}


