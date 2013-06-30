#!/bin/bash

function installMemcached() {
    yum install -y memcached
}


function installPhpMemcached() {
    yum install -y php-pecl-memcached
}

installMemcached
installPhpMemcached
