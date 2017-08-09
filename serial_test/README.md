# serial-test
Very basic test application for the c't-Bot serial protocol (serial-cmd). Consider this as experimental code. **If it breaks, you get to keep both pieces.**

This application was created just for testing the implementation of the serial protocol code. **If you want to connect your Raspberry Pi to a c't-Bot, follow the instructions described in [1] and [2] instead and do not use the branch *serial-cmd* and this experimental test application.**

#### Build how-to
* for Linux & macOS:
  * create a build subdirectory: <code>mkdir build</code>
  * change to build dir: <code>cd build</code>
  * for Linux:
    * call cmake: <code>../cmake/run_linux.sh</code>
  * for macOS:
    * call cmake: <code>../cmake/run_mac.sh</code>
* for Raspberry Pi 2:
  * create a build subdirectory: <code>mkdir build-rpi2</code>
  * change to build dir: <code>cd build-rpi2</code>
  * call cmake: <code>../cmake/run_rpi2.sh</code>
* for Raspberry Pi 3:
  * create a build subdirectory: <code>mkdir build-rpi3</code>
  * change to build dir: <code>cd build-rpi3</code>
  * call cmake: <code>../cmake/run_rpi3.sh</code>
* build everything: <code>make release</code>
* copy file *test_serial* to Raspberry Pi

#### Test run
* create c't-Bot firmware
  * check out branch *serial-cmd*
  * ensure that ***BOT_2_RPI_AVAILABLE*** is set in ct-Bot.h
  * set ***TEST_SERIAL*** in mcu/serial_protocol_handler.cpp
  * build for ATmega1284P (**the branch *serial-cmd* does not work for Linux, macOS, RPi or Windows!**)
  * flash *ct-Bot.hex* to ATmega
* perform reset on ATmega (e.g. by pressing the reset button on the c't-Bot mainboard)
* start test_serial on Raspberry Pi: <code>./test_serial</code>
* the output should show repeatedly the time needed for the last 1000 ping pongs.
* press CTRL+C to abort the ping/pong test

#### Hints
* the Eclipse project might not work with Eclipse versions older than 4.7 (Oxygen), because the language settings provider options have changed and they don't seem to be backwards compatible.
  * -> use Eclipse >= 4.7 (Oxygen) or ignore the stupid warnings


[1]: https://www.heise.de/ct/projekte/machmit/ctbot/wiki/RaspberryPi#Low-levelBot-CodefürATmega
[2]: https://www.heise.de/ct/projekte/machmit/ctbot/wiki/RaspberryPi#High-levelBot-CodefürARM
