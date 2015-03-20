#!/bin/bash

# Start supervisord
/etc/init.d/supervisord start
# Start nginx
service nginx start

# Start sshd service
/usr/sbin/sshd -D