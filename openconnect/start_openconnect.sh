#!/bin/bash

echo $OPEN_PASSWORD > /etc/open.pass
openconnect $OPEN_SERVERIP:$OPEN_SERVERPORT -b -u $OPEN_USERNAME --passwd-on-stdin <"/etc/open.pass" --servercert $OPEN_FINGER

