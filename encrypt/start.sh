#!/bin/bash
CURDIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd )
echo $CURDIR
cd $CURDIR
make
javac Encrypt.java
java -Djava.library.path=. -cp . Encrypt -src datav.jar
