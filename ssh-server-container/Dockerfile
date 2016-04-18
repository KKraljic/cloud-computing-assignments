FROM ubuntu:latest
MAINTAINER "Florian Kaefer, Karlo Kraljic"
RUN apt-get install openssh-server -y
RUN service ssh start
RUN echo "Port 9000" >> /etc/ssh/sshd_config
RUN service ssh restart
EXPOSE 9000

CMD /bin/sh
