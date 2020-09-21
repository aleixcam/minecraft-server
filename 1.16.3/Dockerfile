FROM alpine:latest

RUN apk add openjdk11

WORKDIR /usr/src/server

RUN wget -O server.jar https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar
RUN echo "eula=true" > eula.txt
