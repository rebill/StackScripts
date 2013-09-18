#!/bin/bash

function installPhalcon() {
    yum install -y php-devel
    git clone git://github.com/phalcon/cphalcon.git
    cd cphalcon/build
    sh ./install
}


installPhalcon