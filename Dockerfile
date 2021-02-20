FROM registry.fedoraproject.org/fedora-minimal AS build 
# RUN mkdir /go && microdnf install golang && microdnf clean all 
# WORKDIR /go 

RUN microdnf install systemd \
  # tigervnc-server \
  xorg-x11-server-Xvfb \
  x11vnc \
  fluxbox \
  && microdnf clean all 


# RUN cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@.service
# ADD systemd/vncserver@.service /etc/systemd/system/vncserver@.service

RUN microdnf install firefox

ENV DISPLAY :0


# RUN useradd -ms /bin/bash  vault
# USER vault
# WORKDIR /usr/local/bin/vault
ADD run.sh ./

CMD /bin/sh run.sh

# vncviewer -via USER_2@192.168.2.101:3
# vncserver -list