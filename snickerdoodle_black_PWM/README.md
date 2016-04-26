To use a PWM channel from sysfs first export the channel:

$ echo 0 > /sys/class/pwm/pwmchip0/export

The timing (period and duty cycle, both in nanoseconds) can then be set by writing to the period and duty_cycle files for the desired PWM channel. In the following example a 25kHz PWM with 50% duty is set to channel 0:

$ echo 40000 > /sys/class/pwm/pwmchip0/pwm0/period
$ echo 20000 > /sys/class/pwm/pwmchip0/pwm0/duty_cycle

The channel can be enabled and disabled by writing '1' or '0' to enable, respectively, for the desired channel:

$ echo 1 > /sys/class/pwm/pwmchip0/pwm0/enable

The period and duty cycle can be updated while the PWM channel is active/enabled.
