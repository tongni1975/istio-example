#!/bin/bash
IP="192.168.122.20"

while :; do
	curl -s "http://${IP}/v1"
done
