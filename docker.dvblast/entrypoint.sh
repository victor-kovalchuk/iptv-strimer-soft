#!/bin/bash
/usr/bin/dvblast -a $ADAPTER -5 DVBT2 -f $FREQUENCY -n 0 -C  -c /etc/dvb/ad0.conf 2>/dev/null >/dev/null
