#!/bin/bash

ps -ef | grep ssh | grep 3306 | awk '{print $2}'| xargs -I {} kill -9 {}
ssh  -F deploy/_ssh/config -fN -L 3306:127.0.0.1:3306 dbSer-0
ps -ef | grep 3306