#!/bin/sh -eux

echo 'include_only=.jp' >> /etc/yum/pluginconf.d/fastestmirror.conf
yum clean all
rm -rf /var/cache/yum
yum -y update;
reboot;
sleep 60;
