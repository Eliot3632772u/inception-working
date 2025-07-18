#!/bin/bash

mkdir -p /var/run/vsftpd/empty && chmod 755 /var/run/vsftpd/empty && mkdir -p /var/www/html

useradd -m ftpuser && echo "ftpuser:$FTP_PASSWORD" | chpasswd 

usermod -g www-data ftpuser

/usr/sbin/vsftpd /etc/vsftpd.conf