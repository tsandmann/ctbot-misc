
#include <Arduino.h>
#include <Wire.h>
#include "I2CIO.h"
#include "LiquidCrystal_I2C.h"


I2CIO pcf_01;
LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);

void setup() {
    delay(2000);

    // initialize LED digital pin as an output
    pinMode(LED_BUILTIN, OUTPUT);

    Serial.begin(115200);

    Wire.setSDA(17);
    Wire.setSCL(16);

    bool ret = pcf_01.begin(0x20);
    pcf_01.portMode(OUTPUT); // Set the entire IO extender to OUTPUT
    Serial.print("Init LED(0x20)=");
    Serial.println(ret);

    pcf_01.write(0); // all off

    ret = lcd.begin(20, 4);
    Serial.print("Init LCD(0x3f)=");
    Serial.println(ret);

    lcd.setBacklightPin(3, POSITIVE);
    lcd.setBacklight(HIGH);

    Serial.println("initialization done.");
}


void loop() {
    digitalWrite(LED_BUILTIN, HIGH);

    pcf_01.digitalWrite(0, HIGH);
    pcf_01.digitalWrite(1, LOW);

    delay(250);

    digitalWrite(LED_BUILTIN, LOW);

    pcf_01.digitalWrite(0, LOW);
    pcf_01.digitalWrite(1, HIGH);

    delay(250);

    lcd.home();
    lcd.print("Hello World!");
    lcd.setCursor(0, 1);
    lcd.print("time: ");
    lcd.print(millis());
    lcd.print(" ms");

    static uint8_t run = 0;
    if (run == 5) {
        lcd.setBacklight(HIGH);
        Serial.println("Backlight ON");
    } else if (run == 10) {
        lcd.setBacklight(LOW);
        Serial.println("Backlight OFF");
        run = 0;
    }
    ++run;
}
