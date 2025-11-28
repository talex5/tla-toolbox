FROM debian:13
RUN apt-get update && apt-get install -y ca-certificates libswt-gtk-4-java make shared-mime-info wget --no-install-recommends
RUN wget https://github.com/tlaplus/tlaplus/releases/download/v1.7.4/TLAToolbox-1.7.4.deb && \
    dpkg -i ./TLAToolbox-*.deb && \
    rm TLAToolbox-*.deb
RUN wget https://github.com/tlaplus/tlapm/releases/download/1.6.0-pre/tlapm-1.6.0-pre-x86_64-linux-gnu.tar.gz && \
    tar xf ./tlapm* -C /opt && \
    rm -f ./tlapm*
# Stop toolbox from segfaulting (https://github.com/eclipse-platform/eclipse.platform.swt/issues/1937):
RUN apt-get install -y ibus
RUN useradd user -u 1000 --create-home
USER 1000
WORKDIR /mnt
