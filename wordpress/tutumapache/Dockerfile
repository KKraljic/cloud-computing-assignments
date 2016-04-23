FROM tutum/apache-php:latest
MAINTAINER "Florian Kaefer, Karlo Kraljic"

ENV WORDPRESS_VER 4.3.1
WORKDIR /
RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl \
        apache2 \
        libapache2-mod-php5 \
        php5-mysql \
        php5-mcrypt \
        php5-gd \
        php5-curl \
        php-pear \
        php-apc && \
    apt-get -yq install mysql-client curl && \
    rm -rf /app && \
    curl -0L http://wordpress.org/wordpress-${WORDPRESS_VER}.tar.gz | tar zxv && \
    mv /wordpress /app && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf
RUN a2enmod rewrite
ADD wp-config.php /app/wp-config.php
ADD run.sh /run.sh
RUN chmod +x /*.sh

# Expose environment variables
ENV DB_HOST localhost
ENV DB_PORT 9000
ENV DB_NAME wordpress
ENV DB_USER admin
ENV DB_PASS password

EXPOSE 9001 3306
VOLUME ["/app/wp-content"]
CMD ["/bash"]
