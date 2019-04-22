#Check resource
#!/bin/bash
MODULE_NAME=$1
RESOURCE=$2
OS_USER=$3
OUTPUT_DIR=/tmp/zabbix/module/resource
OUTPUT_FILE=$OUTPUT_DIR/$OS_USER-$MODULE_NAME-$RESOURCE

mkdir -p $OUTPUT_DIR
cat /proc/$(ps -ef|grep $OS_USER|grep $MODULE_NAME| grep -v grep| awk '{print $2}')/status | grep $RESOURCE | awk '{print $2}' > $OUTPUT_FILE
