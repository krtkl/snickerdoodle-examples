## Writing a Unique ID Number to QSPI

Bare-metal snickerdoodle example project for writing a **"magic number"** to the second-to-last word and a **unique value** to the last word of the QSPI flash (U18).

_Note: Requires Vivado 2018.2_

### Vivado Build Flow:

1. Extract the contents of the IP file.

2. Execute the `create_project-2018.2.bat` (`create_project-2018.2.sh` on Linux), which will open Vivado and create the project.

3. Generate the bitstream.

4. Export the hardware to the ./sdk folder (changing the default from "Local Project" in the export dialog).

5. Launch SDK, pointing the workspace to the ./sdk folder (changing the default from "Local Project" in the export dialog).

6. If not present, import the existing "eeprom_read_write_example" and "eeprom_read_write_example_bsp" projects, then run/debug the "eeprom_read_write_example" application after it is built.

7. Run/Debug the "eeprom_read_write_example" application after it is built.

### SDK-Only Flow:

1. Launch SDK, pointing the workspace to the ./sdk folder (changing the default from Local Project in the export dialog).

2. If not present, Import the existing eeprom_read_write_example and eeprom_read_write_example_bsp projects

3. Run/Debug the eeprom_read_write_example application after it is built.

---
### Output
````
[DEBUG  ] Initializing QSPI subsystem ... Done.
[DEBUG  ] Reading Flash ID ... Done. FlashID = 0x20 0xBB 0x18
[DEBUG  ] Writing Magic Number and Device ID to PROM.
[DEBUG  ] Erasing sector at address 0x00000000 ... Done.
[DEBUG  ] Writing 8 bytes to address 0x00000000 ... Done.  8 bytes written.
[DEBUG  ] 0x00000000 : 02 00 00 00 DE AD C0 DE 12 34 56 78
[DEBUG  ] Magic Number and Device ID write to PROM.
[DEBUG  ] Reading Magic Number and Device ID from PROM.
[DEBUG  ] Requesting 8 bytes form address 0x00000000 ... Done.  8 bytes read.
[DEBUG  ] 0x00000000 : 00 00 00 00 DE AD C0 DE 12 34 56 78
[DEBUG  ] Reading Magic Number and Device ID from PROM.
[INFO   ] Device ID written and verified successful.
````
