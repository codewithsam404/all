#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time

# Pin 23 on the physical BCM layout
RESET_PIN = 23

print(f"Resetting SX130x via Python on GPIO {RESET_PIN}...")

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(RESET_PIN, GPIO.OUT)

# Toggle hardware pin high, then low
GPIO.output(RESET_PIN, GPIO.HIGH)
time.sleep(0.1)
GPIO.output(RESET_PIN, GPIO.LOW)
time.sleep(0.1)

GPIO.cleanup()
print("SX130x hardware reset complete.")
