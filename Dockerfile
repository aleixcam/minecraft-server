FROM ubuntu:latest

RUN apt update \
	&& apt upgrade \
	&& apt install git openjdk-8-jre-headless wget screen zip unzip

RUN mkdir /opt/buildtools && cd $_ \
	&& wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
	&& java -Xmx2G -jar BuildTools.jar --rev latest

RUN echo "alias la='ls -la'" >> ~/.bashrc

WORKDIR /srv/minecraft
