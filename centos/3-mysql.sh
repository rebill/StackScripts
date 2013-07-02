#!/bin/bash

function installMySQL() {
    yum install -y mysql-server mysql-devel
}


installMySQL
