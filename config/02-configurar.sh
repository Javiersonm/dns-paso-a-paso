#!/usr/bin/env bash
cp /etc/bind/named.conf.options /etc/bind/named.conf.options.backup

cp /vagrant/files/named              /etc/default/named
cp /vagrant/files/named.conf.options /etc/bind/named.conf.options
cp /vagrant/files/named.conf.local   /etc/bind/named.conf.local
cp /vagrant/files/javier.test.dns    /var/lib/bind/javier.test.dns
cp /vagrant/files/javier.test.rev    /var/lib/bind/javier.test.rev

systemctl restart named