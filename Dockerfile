FROM python:3.8-alpine

WORKDIR /app

RUN apk --update add git gcc libffi-dev libressl-dev linux-headers musl-dev && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

RUN pip install --no-cache-dir paho-mqtt broadlink

RUN git clone https://github.com/eschava/broadlink-mqtt.git .

RUN rm -rf .git && \
  rm -rf commands && \
  rm -rf macros && \
  mkdir commands && \
  mkdir macros
  
RUN apk del git gcc linux-headers musl-dev && \
  rm -rf /var/lib/apt/lists/*

VOLUME ["/app/commands", "/app/macros"]
COPY ["custom.conf.template","start.sh","./"]

ENTRYPOINT ["/bin/sh", "./start.sh"]
