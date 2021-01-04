#!/bin/sh
SOLUTION_NAME=$1
for FILE in /cfg/service/config/*.yml;
do
  FILE_NAME=`basename $FILE .yml`
  echo "Uploading kv for '$FILE_NAME' under solution '$SOLUTION_NAME'"
  curl --request PUT --data-binary @$FILE http://consul:8500/v1/kv/$SOLUTION_NAME/service-config/$FILE_NAME/data
done