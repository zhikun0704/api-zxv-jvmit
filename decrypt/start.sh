#!/bin/bash
CURDIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd )
echo $CURDIR
cd $CURDIR
make
java -jar -agentpath:$CURDIR/libdecrypt.so -Xms1024m -Xmx2048m -XX:PermSize=512M -XX:MaxPermSize=1024m datav_encrypt.jar
