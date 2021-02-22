FROM registry.fedoraproject.org/fedora-minimal AS build 

RUN microdnf install \
  tar \
  xorg-x11-server-Xvfb \
  x11vnc \
  wget \
  unzip \
  libXtst \
  libXrender  \
  libXi libXinerama \
  socat \
  nmap-ncat \
  xterm \
  && microdnf clean all 

RUN microdnf install firefox



# RUN useradd -ms /bin/bash tws
# USER tws
# WORKDIR /home/tws

ADD ib/installer.sh ./installer.sh
RUN sh ./installer.sh

# ADD ib/execs/ibgateway-latest-standalone-linux-x64.sh ./
# RUN chmod a+x ibgateway-latest-standalone-linux-x64.sh && \
#     printf "\n n" | ./ibgateway-latest-standalone-linux-x64.sh 


ADD ib/jts.ini /root/Jts/
Add ib/ibgateway.vmoptions /root/Jts/ibgateway/981/

ADD ibc/ibc_installer.sh ./ibc_installer.sh
RUN sh ./ibc_installer.sh

ADD ibc/config.ini /opt/ibc/config.ini

ENV DISPLAY :0
ADD run.sh ./
CMD /bin/sh run.sh

# vncviewer -via USER_2@192.168.2.101:3
# vncserver -list

