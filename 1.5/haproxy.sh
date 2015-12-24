#/bin/bash -s

EXEC="/usr/sbin/haproxy"
PID_FILE="/var/run/haproxy.pid"
CONF_FILE="/etc/haproxy/haproxy.cfg"

exec $EXEC -f $CONF_FILE -p $PID_FILE