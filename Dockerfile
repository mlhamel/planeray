FROM ubuntu:16.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install git git-core cmake libusb-1.0-0-dev build-essential pkg-config rtl-sdr librtlsdr-dev
RUN git clone https://github.com/antirez/dump1090.git && cd dump1090 && make
ADD /dump1090
EXPOSE 8080
CMD /dump1090/dump1090 --net --net-ro-port 31001
