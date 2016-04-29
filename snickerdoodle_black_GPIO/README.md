# GPIO Hardware Example Project

## `sysfs` GPIO Driver Interface

Using a GPIO pin requires that it is first exported using:
```
$ echo 742 > /sys/class/gpio/export
```
The direction of the pin can be set by writing either 'in' or 'out' to the associated direction that was generated during the export process:
```
$ echo out > /sys/class/gpio/gpio742/direction
```
The pin can be set high or low by writing '1' or '0' to the associated value, respectively:
```
$ echo 1 > /sys/class/gpio/gpio742/value
```
### GPIO Test Script

The GPIO allocated to the FPGA connectors can be tested using `gpiotest.sh`. The script expects two arguments. The first argument is a composite of the desired connector and pin "." delimited as shown below where `<Jxx>` is one of the FPGA connectors (JA1, JA2, JB1, etc.) and `<pin>` is the desired pin number. The second argument is either 0 or 1 representing low or high state for the pin, respectively:
```
$ source gpiotest.sh <Jxx>.<pin> <0 | 1>
```
Examples:
```
$ source gpiotest.sh JB2.37 0          # Set pin 37 on JB2 low
$ source gpiotest.sh JA1.4 1           # Set pin 4 on JA1 high
```
