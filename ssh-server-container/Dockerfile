FROM centos:7
MAINTAINER "Florian Kaefer, Karlo Kraljic"
RUN yum -y install openssh-server openssh-clients
RUN chkconfig sshd on
RUN service sshd start
RUN echo "-A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 9000 -j ACCEPT" >> /etc/sysconfig/iptables
RUN service iptables restart
RUN echo "AllowUser mueller \n Port 9000" >> /etc/ssh/sshd_config
RUN service sshd restart
EXPOSE 9000

CMD /bin/sh
