# serial-test
Very basic test application for the c't-Bot serial protocol (serial-cmd). Consider this as experimental code. **If it breaks, you get to keep both pieces.**

#### Build how-to
* create a build subdirectory: <code>mkdir build</code>
* change to build dir: <code>cd build</code>
* call cmake for a Raspberry Pi 3 config: <code>../cmake/run_rpi3.sh</code>
  * for Raspberry Pi 2: <code>../cmake/run_rpi2.sh</code>
  * for macOS: <code>../cmake/run_mac.sh</code>
  * for Linux (*untested!*): <code>../cmake/run_linux.sh</code>
* build everything: <code>make release</code>
* copy file *test_serial* to Raspberry Pi

#### Test run
* create c't-Bot firmware
  * check out branch *serial-cmd*
  * ensure that *BOT_2_RPI_AVAILABLE* is set
  * build for ATmega1284P and flash *ct-Bot.hex* to it
* perform reset on ATmega (e.g. by pressing the reset button on the c't-Bot mainboard)
* start test_serial on Raspberry Pi: <code>./test_serial</code>
* the output should show repeatedly the time needed for the last 1000 ping pongs.
* press CTRL+C to abort the ping/pong test
