FROM ubuntu:latest
MAINTAINER "Florian Kaefer, Karlo Kraljic"
RUN apt-get install openssh-server -y
RUN sed -i 's/Port 22/Port 9000/g' /etc/ssh/sshd_config
RUN service openssh-server start
EXPOSE 9000

CMD /bin/bash
