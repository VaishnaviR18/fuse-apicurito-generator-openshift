#!/bin/sh
set -e
tar -C /home/user -xf /deployment/runtime.jar
chown user:user -R /home/user

groupadd -r jboss -g 185 && useradd -u 185 -r -g root -G jboss -m -d /home/jboss -s /sbin/nologin -c "JBoss user" jboss
cp /etc/passwd /home/jboss/passwd
chmod ug+rwX /home/jboss /home/jboss/passwd