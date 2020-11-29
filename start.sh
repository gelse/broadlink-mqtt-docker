#!/usr/bin/env sh

eval "echo \"$(cat custom.conf.template)\"" > custom.conf
python mqtt.py
