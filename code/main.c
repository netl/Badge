#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdlib.h>

#define SET_E PORTC|=(1<<3)
#define CLEAR_E PORTC&=~(1<<3)
#define SET_RW PORTC|=(1<<2)
#define CLEAR_RW PORTC&=~(1<<2)
#define SET_RS PORTC|=(1<<1)
#define CLEAR_RS PORTC&=~(1<<1)

void clock()
{
 SET_E;
 _delay_ms(1);
 CLEAR_E;
}

void commandClock()  //slow down for sending commands
{
 SET_E;
 _delay_ms(5);
 CLEAR_E;
}

void command(uint8_t cmd)
{
  CLEAR_RW;
  CLEAR_RS;
  PORTD =((cmd>>4)&0xf);
  commandClock();
  PORTD=(cmd&0xf);
  commandClock();
}

void lcdWrite(uint8_t cmd)
{
  CLEAR_RW;
  SET_RS;
  PORTD =((cmd>>4)&0xf);
  clock();
  PORTD=(cmd&0xf);
  clock();
}

void lcdCursor(uint8_t cmd)
{
 command(0x80|(cmd&0x7f)); 
}

void flipBuffer(uint8_t *buffer)
{
  //command(0x01);  //clear display
  lcdCursor(0);
  uint8_t x,y;
  for(y=0;y<=1;y++)
  {
    for(x=0;x<=8;x++)
      lcdWrite(*(buffer+x+8*y));
    lcdCursor(40);  //second row, first character
  }
}

void loop()
{
  static uint8_t buffer[17]="  netl  ";
  static uint8_t bannertext[] = "        Juuso   Metsavuori      turku.hacklab.fi        netl.fi        ";
  static uint8_t pauselist[] = {8,17,19,31,39,42,56}; //tells where to stop scrolling the 
  static uint8_t  offset=0,pausecounter=0;
  uint8_t i;
  bannertext[20]=0xe1; //add ä to the scrolling text
  for(i=0;i<=7;i++)  //render the text on the lower half of the screen
  {
    buffer[8+i]=bannertext[i+offset];
  }
  
  offset++;
  if(offset>(sizeof(bannertext)-10))  //start from the beginning if at the end
    offset=0;
  
  flipBuffer(&buffer[0]);  //draw on lcd
	if(offset!=pauselist[pausecounter])
		_delay_ms(50);
	else
	{
		_delay_ms(1500);
		pausecounter++;
		if(pausecounter == sizeof(pauselist))
			pausecounter=0;
	}
}

int main(void)
{
	DDRC=0b1110; //RS,R/W,E as output
	DDRD=0b1111; //data as out, PD7 needs to be input and hi-z (shorted to reset)

   //initialize three times
   PORTD=0x3;
   clock();
   _delay_ms(10);
   clock();
   _delay_ms(10);
   clock();
   _delay_ms(10);
   clock();
   _delay_ms(10);
   PORTD=0x2;
   clock();
   
   //setup
   command(0x01);  //clear display
   command(0x28);
   command(0x10);
   command(0x0c);
   command(0x06);

   lcdCursor(0);

   while(1)
	   loop();
}
