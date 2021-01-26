#!/bin/bash

set -e
chmod 700 /root/.ssh
chmod 644 /root/.ssh/id_rsa.pub
chmod 600 /root/.ssh/id_rsa
chmod 600 /root/.ssh/ssh_config
chmod 600 /root/.ssh/known_hosts

exec "$@"
