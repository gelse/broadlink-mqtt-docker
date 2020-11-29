# Overview
Docker container for https://github.com/eschava/broadlink-mqtt

## Usage
- clone the repo:
`git clone https://github.com/gelse/broadlink-mqtt-docker.git`
- create a config file named `config.env` in the root directory
example content:
```
DEVICE_TYPE=lookup
DEVICE_HOST=192.168.1.50
DEVICE_MAC=01:23:45:67:ab:00
MQTT_BROKER=localhost
MQTT_USERNAME=
MQTT_PASSWORD=
MQTT_TOPIC_PREFIX=broadlink/
MQTT_PORT=1883
```

## Docker-compose
- run `docker-compose up`
