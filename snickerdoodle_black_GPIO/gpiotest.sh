#!/bin/bash

# Connector port definitions
JA1=881
JA2=849
JB1=824
JB2=792
JC1=767
J3=906

GPIO_BASE=/sys/class/gpio/

declare -A fpga_gpio=([4]=24  [5]=8   [6]=11  [7]=9   [8]=10 
                      [11]=12 [12]=15 [13]=13 [14]=14 [17]=20
                      [18]=17 [19]=21 [20]=16 [23]=18 [24]=1
                      [25]=19 [26]=0  [29]=2  [30]=5  [31]=3
                      [32]=4  [35]=6  [36]=23 [37]=27 [38]=22)
                      
declare -A ps_gpio=(        [5]=16  [6]=19   [7]=17 [8]=18 
                    [11]=20 [12]=23 [13]=21 [14]=22 [17]=24
                    [18]=27 [19]=25 [20]=26 [23]=28 [24]=31
                    [25]=29 [26]=30 [29]=32 [30]=35 [31]=33
                    [32]=34 [35]=36 [36]=39 [37]=37 [38]=38)

declare -A connectors=(["JA1"]=881 ["JA2"]=849 ["JB1"]=824 ["JB2"]=792 ["JC1"]=767 ["J3"]=906)


#
# Getter for FPGA port number
#
function get_fpga_port() {

  if [ -z ${fpga_gpio[$2]} ]; then
    echo "GPIO pin $2 not found"
    return -1
  fi 
  
  let "port=${fpga_gpio[$2]} + $1"
  echo $port
}


#
# Getter for PS port number
#
function get_ps_port() {

  if [ -z ${ps_gpio[$2]} ]; then
    echo "GPIO pin $2 not found"
    return -1
  fi 
  
  let "port=${ps_gpio[$2]} + $1"
  echo $port
}


#
# Export gpio port
#
function export_gpio() {

  echo $1 > ${GPIO_BASE}/export
}


#
# Set pin direction
#
function set_gpio_dir() {

  if [ ! -e ${GPIO_BASE}/gpio$1 ]; then
    export_gpio $1
    sleep 1
  fi
  echo $2 > ${GPIO_BASE}/gpio$1/direction
}


#
# Set the pin out
#
function set_gpio_val() {

  case $2 in
    [0-1])
      echo "Writing $2 to ${GPIO_BASE}/gpio$1/value"
      echo $2 > ${GPIO_BASE}/gpio$1/value
      sleep 1
      ;;
    *)
      echo "Invalid value specified: $2"
      return -1
      ;;
  esac
}

# Parse the first argument into the connector and pin values
GPIO_CON=$(echo $1 | cut -d "." -f1)
GPIO_PIN=$(echo $1 | cut -d "." -f2)

case $GPIO_CON in
  JA1 | JA2 | JB1 | JB2 | JC1 )
    #
    # Use the array for fpga gpio
    #
    port=$(get_fpga_port ${connectors[$GPIO_CON]} $GPIO_PIN)
    if [ $? -ne 0 ]; then
      echo "ERROR: $port"
      return $?
    fi
    set_gpio_dir $port out
    if [ ! -z "$2" ]; then
      set_gpio_val $port $2
    fi
  ;;
  J3)
    #
    # Use the array for ps gpio
    #
    port=$(get_ps_port ${connectors[$GPIO_CON]} $GPIO_PIN)
    if [ $? -ne 0 ]; then
      echo "ERROR: $port"
      return $?
    fi
    set_gpio_dir $port out
    if [ ! -z "$2" ]; then
      set_gpio_val $port $2
    fi
  ;;
  *)
    #
    # THIS IS AN ERROR
    #
    echo "Invalid connector specified: $GPIO_CON"
    echo "  --Valid connectors are:"
    for gpioconn in ${!connectors[@]}; do
      echo "  $gpioconn"
    done 
  ;;
esac


