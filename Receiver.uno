#include <Wire.h>
#include <Adafruit_LiquidCrystal.h>

Adafruit_LiquidCrystal lcd(0);
int red=11;
int green =8;
int resetbtn =7;

void setup()
{
  pinMode(resetbtn, INPUT_PULLUP);
  Serial.begin(9600);
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  // Initialize the LCD
  lcd.begin(16, 2);
  lcd.setBacklight(1);
  
  lcd.clear();
  lcd.setCursor(0, 0); 
  lcd.print("Booting");
  digitalWrite(red, HIGH);
  digitalWrite(green, LOW);
  delay(300);
  lcd.clear();
  lcd.print("Morse Code");
  lcd.setCursor(0, 1); 
  lcd.print("Transmitter");
  digitalWrite(red, LOW);
  digitalWrite(green, HIGH);
  delay(300);
  digitalWrite(green, LOW);
  lcd.clear();
  lcd.setCursor(0, 0); 
}

void loop() 
{
  // Check if data is available in the serial buffer
  if (Serial.available()) {
    char x = Serial.read();  // Read the incoming character
    //lcd.clear();  // Clear the previous character on the LCD
    lcd.print(x);
    digitalWrite(green, HIGH);
    digitalWrite(red, HIGH);
  	delay(100);
  	digitalWrite(green, LOW);
    digitalWrite(red, LOW);
  }
  
  delay(100);
  
  if (digitalRead(resetbtn) == LOW ){
    lcd.clear();
    digitalWrite(green, HIGH);
  	delay(100);
  	digitalWrite(green, LOW);
  }
  
}
