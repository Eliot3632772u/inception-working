FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 1365 -newkey rsa:2048\
    -keyout /etc/nginx/ssl/server.key \
    -out /etc/nginx/ssl/server.crt \
    -subj "/CN=${DOMAIN_NAME}"

COPY conf/default /etc/nginx/sites-enabled/default

RUN  mkdir -p /var/www/html/about

RUN chown -R www-data:www-data /var/www/html/about

CMD ["nginx", "-g", "daemon off;"]