#!/bin/bash

function installMemcached() {
    yum install -y memcached libmemcached-devel
}


function installPhpMemcached() {
    yum install -y php-pecl-memcached
}

installMemcached
installPhpMemcached
