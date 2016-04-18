FROM ubuntu:latest
MAINTAINER "Florian Kaefer, Karlo Kraljic"
RUN apt-get install openssh-server -y
RUN service ssh start
RUN echo "-A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 9000 -j ACCEPT" >> /etc/sysconfig/iptables
RUN echo "AllowUser mueller \n Port 9000" >> /etc/ssh/sshd_config
RUN service iptables restart
RUN service ssh restart
EXPOSE 9000

CMD /bin/sh
