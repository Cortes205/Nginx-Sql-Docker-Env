# Script to build the nginx (Debian Linux) image for
# hosting local web apps
# 
# @author:  Alan Cortes
# @version: 1.0.0
#

FROM nginx:latest
# Install php, php extensions, and needed tools
RUN apt-get update && apt-get install -y \
    vim \
    php \
    php-xml \
    php-curl \
    php-mysql \
    php-fpm \
    php-cgi \
    composer \
    npm

# Install phpmyadmin via noninteractive install
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y phpmyadmin
ENV DEBIAN_FRONTEND=""

# Copy our custom scripts into the container
COPY ./.vimrc /root/
COPY ./.bashrc /root/
COPY ./php/8.4/fpm/ /etc/php/8.4/fpm/
COPY ./nginx/ /etc/nginx/
COPY ./phpmyadmin /etc/phpmyadmin/
COPY ./docker-entrypoint.d/ /docker-entrypoint.d/

# Make run-app.sh executable
WORKDIR /docker-entrypoint.d
RUN chmod 755 run-app.sh

# Set permissions for our vhost directory
WORKDIR /home/admin/web 
RUN chmod -R 755 .
