
#include <Arduino.h>
#include <Wire.h>
#include "I2CIO.h"
#include "LiquidCrystal_I2C.h"
#include "PWMServo.h"
#include <util/delay.h>


I2CIO pcf_01;
LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);

PWMServo myservo;

void pin_isr() {
    digitalWrite(25, LOW);
}

void foo() __attribute__((noinline));
void foo() {
    digitalWriteFast(26, LOW);
}

void setup() {
    delay(2000);

    // initialize LED digital pin as an output
    pinMode(LED_BUILTIN, OUTPUT);

    Serial.begin(4000000UL);

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

    pcf_01.digitalWrite(2, HIGH);

    // analogWriteFrequency(29, 14648);
    // analogWriteResolution(12);
    analogWriteFrequency(29, 29296);
    analogWriteResolution(11);

    pinMode(5, OUTPUT);
    digitalWrite(5, HIGH);
    // analogWrite(29, static_cast<int>(4095 / 100.f * 20.f));
    analogWrite(29, static_cast<int>(2047 / 100.f * 5.f));

    pinMode(6, OUTPUT);
    pinMode(14, INPUT);

    myservo.attach(6);

    pinMode(24, INPUT);
    pinMode(25, OUTPUT);
    pinMode(26, OUTPUT);
    digitalWriteFast(25, LOW);
    digitalWriteFast(26, LOW);
    attachInterrupt(
        24, [] () {
            // _delay_us(1);
            digitalWriteFast(26, HIGH);
        }, RISING
    );
}


void loop() {
#if 0
    digitalWrite(LED_BUILTIN, HIGH);

    pcf_01.digitalWrite(0, HIGH);
    pcf_01.digitalWrite(1, HIGH);

    delay(250);

    digitalWrite(LED_BUILTIN, LOW);

    pcf_01.digitalWrite(0, LOW);
    pcf_01.digitalWrite(1, LOW);

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
#endif

#if 0
    const uint32_t speed_pc { 15U };
    const uint32_t drive_time_ms { 750U };
    const uint32_t stop_time_ms { 5000U };

    /* vorwarts */
    digitalWrite(5, HIGH);
    digitalWrite(LED_BUILTIN, HIGH);
    analogWrite(29, static_cast<int>(2047 / 100.f * speed_pc));
    delay(drive_time_ms);

    // /* stop */
    // for (uint32_t speed { speed_pc }; speed > 0U; --speed) {
    //     analogWrite(29, static_cast<int>(2047 / 100.f * speed));
    //     delay(10);
    // }
    // analogWrite(29, 0);
    // delay(stop_time_ms);

    // /* rueckwarts */
    // digitalWrite(5, LOW);
    // digitalWrite(LED_BUILTIN, LOW);
    // analogWrite(29, static_cast<int>(2047 / 100.f * speed_pc));
    // delay(drive_time_ms);

    // /* stop */
    // for (uint32_t speed { speed_pc }; speed > 0U; --speed) {
    //     analogWrite(29, static_cast<int>(2047 / 100.f * speed));
    //     delay(10);
    // }
    // analogWrite(29, 0);
    // delay(stop_time_ms);
#endif

    int val = analogRead(14);
    val = map(val, 0, 1023, 0, 179);
    Serial.print("val=");
    Serial.println(val);
    myservo.write(val);
    delay(50);

    digitalWriteFast(25, HIGH);
    delay(1);
    digitalWriteFast(25, LOW);
    // _delay_us(1);
    // digitalWriteFast(26, LOW);
    foo();
}
