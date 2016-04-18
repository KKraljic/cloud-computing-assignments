FROM ubuntu:latest
MAINTAINER "Florian Kaefer, Karlo Kraljic"
RUN apt-get install openssh-server -y
RUN apt-get install openssh-client -y
RUN sed -i 's/Port 22/Port 9000/g' /etc/ssh/sshd_config
RUN sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config

CMD service sshd  start
