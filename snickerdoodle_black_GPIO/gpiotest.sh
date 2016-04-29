#!/bin/bash

# Connector port definitions
JA1=881
JA2=849
JB1=824
JB2=792
JC1=767

GPIO_BASE=/sys/class/gpio/

# Check arguments
# First argument is expected to be the connector and pin
# Second argument is expected to be the value (0 or 1) or omitted for read operation

# Parse the first argument into the connector and pin values
GPIO_CON=$(echo $1 | cut -d "." -f1)
GPIO_PIN=$(echo $1 | cut -d "." -f2)

case $GPIO_CON in
  JA1)
    echo "Using ${GPIO_BASE}gpiochip$JA1"
    GPIO_NUM=$JA1
    ;;
  JA2)
    echo "Using ${GPIO_BASE}gpiochip$JA2"
    GPIO_NUM=$JA2
    ;;
  JB1)
    echo "Using ${GPIO_BASE}gpiochip$JB1"
    GPIO_NUM=$JB1
    ;;
  JB2)
    echo "Using ${GPIO_BASE}gpiochip$JB2"
    GPIO_NUM=$JB2
    ;;
  JC1)
    echo "Using ${GPIO_BASES}gpiochip$JC1"
    GPIO_NUM=$JC1
  *)
    echo "Invalid connector specified: $GPIO_CON"
    return
    ;;
esac

# Check if the GPIO interface has already been exported
if [ ! -e ${GPIO_BASE}/gpiochip$GPIO_NUM ]; then
    echo "GPIO interface not found: ${GPIO_BASE}/gpiochip$GPIO_NUM"
fi

case $GPIO_PIN in
  4)
    GPIO_PORT=$(expr $GPIO_NUM + 24)
    ;;
  5)
    GPIO_PORT=$(expr $GPIO_NUM + 8)
    ;;
  6)
    GPIO_PORT=$(expr $GPIO_NUM + 11)
    ;;
  7)
    GPIO_PORT=$(expr $GPIO_NUM + 9)
    ;;
  8)
    GPIO_PORT=$(expr $GPIO_NUM + 10)
    ;;
  11)
    GPIO_PORT=$(expr $GPIO_NUM + 12)
    ;;
  12)
    GPIO_PORT=$(expr $GPIO_NUM + 15)
    ;;
  13)
    GPIO_PORT=$(expr $GPIO_NUM + 13)
    ;;
  14)
    GPIO_PORT=$(expr $GPIO_NUM + 14)
    ;;
  17)
    GPIO_PORT=$(expr $GPIO_NUM + 20)
    ;;
  18)
    GPIO_PORT=$(expr $GPIO_NUM + 17)
    ;;
  19)
    GPIO_PORT=$(expr $GPIO_NUM + 21)
    ;;
  20)
    GPIO_PORT=$(expr $GPIO_NUM + 16)
    ;;
  23)
    GPIO_PORT=$(expr $GPIO_NUM + 18)
    ;;
  24)
    GPIO_PORT=$(expr $GPIO_NUM + 1)
    ;;
  25)
    GPIO_PORT=$(expr $GPIO_NUM + 19)
    ;;
  26)
    GPIO_PORT=$(expr $GPIO_NUM + 0)
    ;;
  29)
    GPIO_PORT=$(expr $GPIO_NUM + 2)
    ;;
  30)
    GPIO_PORT=$(expr $GPIO_NUM + 5)
    ;;
  31)
    GPIO_PORT=$(expr $GPIO_NUM + 3)
    ;;
  32)
    GPIO_PORT=$(expr $GPIO_NUM + 4)
    ;;
  35)
    GPIO_PORT=$(expr $GPIO_NUM + 6)
    ;;
  36)
    GPIO_PORT=$(expr $GPIO_NUM + 23)
    ;;
  37)
    GPIO_PORT=$(expr $GPIO_NUM + 27)
    ;;
  38)
    GPIO_PORT=$(expr $GPIO_NUM + 22)
    ;;
  *)
    echo "Invalid pin specified: $GPIO_PIN"
    return
    ;;
esac

# Check if the port exists
if [ ! -e ${GPIO_BASE}/gpio$GPIO_PORT ]; then
    echo $GPIO_PORT > ${GPIO_BASE}/export
    sleep 1
    echo out > ${GPIO_BASE}/gpio${GPIO_PORT}/direction
fi

if [ ! -z "$2" ]; then
  case $2 in
    [0-1])
      echo "Writing $2 to ${GPIO_BASE}/gpio${GPIO_PORT}/value"
      echo $2 > ${GPIO_BASE}/gpio${GPIO_PORT}/value
      sleep 1
      ;;
    *)
      echo "Invalid value specified: $2"
      return
      ;;
  esac
fi
