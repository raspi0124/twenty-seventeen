// this program is for "when somebady push button, led wll lighting up

import RPi.GPIO as GPIO
import time

// set led as 11 gpio pin and button as 3 gpio pin.so this program wii need "put led to 11 and button to 3"
led = 11
button = 3

GPIO.setmode(GPIO.BOARD)

// setup

GPIO.setup(led, GPIO.OUT)
GPIO.setup(button, GPIO.IN)

// output it ( start programms)

GPIO.output(led, 0)

while GPIO.input(button) :
    pass

GPIO.output(led, 1)

//sleep 5 sec

time.sleep(5)

GPIO.cleanup()
