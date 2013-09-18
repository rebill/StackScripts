#!/bin/bash

function installPhalcon() {
    yum install -y php-devel
    git clone git://github.com/phalcon/cphalcon.git
    cd cphalcon/build
    sh ./install
}

function installOpcache() {
    yum remove -y php-eaccelerator php-xcache php-apcu
    yum install -y php-pecl-zendopcache
}

installPhalcon
installOpcache