FROM ubuntu:latest

RUN apt upgrade \
	&& apt upgrade \
	&& apt install git openjdk-8-jre-headless wget zip unzip

RUN mkdir /opt/buildtools && cd $_ \
	&& wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
	&& java -Xmx2G -jar BuildTools.jar --rev latest

RUN echo "alias la='ls -la'" >> ~/.bashrc

WORKDIR /srv/minecraft
