Using a GPIO pin requires that it is first exported using:

$ echo 742 > /sys/class/gpio/export

The direction of the pin can be set by writing either 'in' or 'out' to the associated direction that was generated during the export process:

$ echo out > /sys/class/gpio/gpio742/direction

The pin can be set high or low by writing '1' or '0' to the associated value, respectively:

$ echo 1 > /sys/class/gpio/gpio742/value
