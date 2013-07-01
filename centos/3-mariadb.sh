#!/bin/bash

function installMariaDB() {
    cat >>/etc/yum.repos.d/MariaDB.repo<<eof
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/5.5/centos5-x86
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
eof

    rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
    yum install -y MariaDB-devel MariaDB-server MariaDB-client
}


installMariaDB
