FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y redis-server

COPY conf/redis.conf /etc/redis/redis.conf

CMD ["redis-server", "/etc/redis/redis.conf"]

