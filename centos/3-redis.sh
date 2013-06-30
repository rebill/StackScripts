#!/bin/bash

function installRedis() {
    yum install -y redis hiredis
}


function installPhpRedis() {
    yum install -y php-redis
}


function installPyRedis() {
    yum install -y python-redis
}


installRedis
installPhpRedis
installPyRedis
