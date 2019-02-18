#!/bin/bash
 SRCDIR=/srv/http
 DESTDIR=/tmp/fromscripts/wordpressbackup/
 FILENAME=wpress-$(date "+%m%d%y-%H%M").tgz
 tar -cvzf $DESTDIR/$FILENAME -C $SRCDIR wordpress/ && aws s3 cp $DESTDIR/$FILENAME s3://my-bucket && rm $DESTDIR/$FILENAME
