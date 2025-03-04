FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/NeuraiProject/Neurai/releases/download/1.0.4/neurai-1.0.4.0.WITH.NEW.DERIVATION.-x86_64-linux-gnu.tar.gz
RUN tar zxvf neurai-1.0.4.0.WITH.NEW.DERIVATION.-x86_64-linux-gnu.tar.gz
RUN mv bin/* /usr/bin/
RUN wget https://raw.githubusercontent.com/TheRetroMike/rmt-nomp/master/scripts/blocknotify.c
RUN gcc blocknotify.c -o /usr/bin/blocknotify
CMD /usr/bin/neuraid -printtoconsole
