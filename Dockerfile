FROM debian:13
RUN apt-get update && apt-get install -y ca-certificates libswt-gtk-4-java make shared-mime-info wget --no-install-recommends
RUN wget https://github.com/tlaplus/tlaplus/releases/download/v1.7.4/TLAToolbox-1.7.4.deb && \
    dpkg -i ./TLAToolbox-*.deb && \
    rm TLAToolbox-*.deb
RUN wget https://github.com/tlaplus/tlapm/releases/download/202210041448/tlaps-1.5.0-x86_64-linux-gnu-inst.bin && \
    chmod a+x ./tlaps* && \
    ./tlaps* && \
    rm ./tlaps*
WORKDIR /mnt
