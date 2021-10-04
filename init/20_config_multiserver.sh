#!/bin/bash
#
# 50_config_multiserver.sh
#
#

echo "ZM_DB_HOST=${ZM_DB_HOST}" > /etc/zm/conf.d/02-multiserver.conf
echo "ZM_DB_USER=${ZM_DB_USER}" >> /etc/zm/conf.d/02-multiserver.conf
echo "ZM_DB_PASS=${ZM_DB_PASS}" >> /etc/zm/conf.d/02-multiserver.conf
echo "ZM_SERVER_HOST=${ZM_SERVER_HOST}" >> /etc/zm/conf.d/02-multiserver.conf
