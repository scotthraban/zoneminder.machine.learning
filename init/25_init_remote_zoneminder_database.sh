#!/bin/bash
#
# 25_init_remote_zoneminder_database.sh
#
#

export MYSQL_PWD=$ZM_DB_PASS

TABLES=`echo "show tables" | mysql zm -u$ZM_DB_USER -h$ZM_DB_HOST --column-names=false`
STATUS=$?

if [[ $STATUS -eq 0 ]];
then
  if [[ ! -z "$TABLES" ]];
  then
    echo "Zoneminder database is already initialized"
  else
    echo "Initializing Zoneminder database..."
    mysql -u$ZM_DB_USER -h$ZM_DB_HOST < /usr/share/zoneminder/db/zm_create.sql
    echo "Setting custom defaults in Zoneminder database..."
    mysql -u$ZM_DB_USER -h$ZM_DB_HOST < /root/mysql_defaults.sql
    if [[ ! -z "$ZM_ROOT_DB_PASS" ]];
    then
      echo "Securing Zoneminder database..."
      export MYSQL_PWD=$ZM_ROOT_DB_PASS
      mysql -uroot -h$ZM_DB_HOST < /root/mysql_secure_installation.sql
    fi
  fi
else
  echo "Failure determining if Zoneminder database needs to be initialized ( $STATUS : $TABLES )"
fi