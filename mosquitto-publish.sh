#!/bin/sh

# Set ThingsBoard host to your local IP
THINGSBOARD_HOST="192.168.0.30"
# access token taken from TB Device details panel.
ACCESS_TOKEN="A1_TEST_TOKEN"
# Publish serial number and firmware version attributes
mosquitto_pub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/attributes" -u "$ACCESS_TOKEN" -f "attributes-data.json"
# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
mosquitto_pub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/telemetry" -u "$ACCESS_TOKEN" -f "telemetry-data.json"

