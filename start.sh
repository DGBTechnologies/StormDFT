#!/bin/bash

mkdir /home/temp

http-server /opt/web_app/front_end  2>&1 &

/opt/web_app/back_end $LICENSE_KEY