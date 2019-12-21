#!/bin/sh

# Set ThingsBoard host to your local IP
THINGSBOARD_HOST="192.168.0.30"
# access token taken from TB Device details panel.
ACCESS_TOKEN="A1_TEST_TOKEN"
# Subscribes to attribute updates
mosquitto_sub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/attributes" -u "$ACCESS_TOKEN"
