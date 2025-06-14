#!/bin/bash

WarFile="target/vprofile-v2.war"
S3Bucket="web-artifacts-tomcat"

mvn clean install || { echo "mvn error"; exit 1; }
aws s3 cp "$WarFile" "s3://$S3Bucket/" || { echo "aws error"; exit 1; }
