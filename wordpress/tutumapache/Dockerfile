FROM tutum/apache-php:latest
MAINTAINER "Florian Kaefer, Karlo Kraljic"

ENV WORDPRESS_VER 4.3.1
WORKDIR /
RUN apt-get update && \
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
ENV DB_PORT 9001
ENV DB_NAME wordpress
ENV DB_USER admin
ENV DB_PASS password

EXPOSE 9001
VOLUME ["/app/wp-content"]
CMD ["/run.sh"]
