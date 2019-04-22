#Check song chet
#!/bin/bash
MODULE_NAME=$1
OS_USER=$2
OUTPUT_DIR=/tmp/zabbix/module/status
OUTPUT_FILE=$OUTPUT_DIR/$OS_USER-$MODULE_NAME-status

mkdir -p $OUTPUT_DIR
ps -ef| grep $OS_USER|grep $MODULE_NAME| grep -v grep| wc -l > $OUTPUT_FILE
