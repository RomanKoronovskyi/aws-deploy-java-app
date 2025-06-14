#!/bin/bash

WarFile="vprofile-v2.war"
S3Bucket="web-artifacts-tomcat"
TomcatWebApps="/var/lib/tomcat10/webapps"

snap install aws-cli --classic
aws s3 cp "s3://S3Bucket/WarFile" /tmp/ || {echo "error aws"; exit 1;}
systemctl daemon-reload
systemctl stop tomcat10

rm -rf "$TomcatWebApps/ROOT"
cp "/tmp/WarFile" "TomcatWebApps/ROOT.war" || {echo "error cp WarFile"; exit 1;}

systemctl start tomcat10
