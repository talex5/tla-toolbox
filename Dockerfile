FROM debian:10
RUN apt-get update && apt-get install -y wget openjdk-11-jre libgtk3.0 unzip --no-install-recommends
WORKDIR /tla
RUN wget https://github.com/tlaplus/tlaplus/releases/download/v1.6.0/TLAToolbox-1.6.0-linux.gtk.x86_64.zip
RUN unzip TLAToolbox-1.6.0-linux.gtk.x86_64.zip && rm TLAToolbox-1.6.0-linux.gtk.x86_64.zip
