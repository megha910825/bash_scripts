#!/bin/bash

cp -r /var/log/*.log /tmp/.
ls /tmp/*.log| while read line; do
sed -i '0,/host/s/host/Machine/' $line
done

