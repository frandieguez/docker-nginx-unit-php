FROM ubuntu:xenial

RUN apt update
RUN apt install wget -y
RUN wget http://nginx.org/keys/nginx_signing.key
RUN apt-key add nginx_signing.key
RUN echo "deb http://nginx.org/packages/mainline/ubuntu/ xenial nginx" >> /etc/apt/sources.list
RUN apt update
RUN apt -y dist-upgrade
RUN apt install -y nginx \
    unit \
    golang \
    php-dev \
    php7.0-dev \
    libphp-embed \
    libphp7.0-embed \
    python-dev \
    python3 \
    python3-dev \
    php7.0-cli \
    php7.0-mcrypt \
    php7.0-pgsql \
    php7.0-sqlite3 \
    php7.0-opcache \
    php7.0-curl \
    php7.0-mbstring \
    php7.0-dom \
    php7.0-xml \
    php7.0-zip \
    php7.0-bcmath
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY app.json /app.json
COPY index.php /var/www/public/index.php
COPY start.sh /start.sh
RUN chmod a+x /start.sh

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

STOPSIGNAL SIGTERM

CMD /start.sh
