#!/bin/bash

function setTimezone() {
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
    yum install -y ntp
    ntpdate -u pool.ntp.org
}


function disableSeLinux() {
    if [ -s /etc/selinux/config ]; then
    sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
    fi
}


function optimize() {
    cat >>/etc/security/limits.conf<<eof
* soft nproc 65535
* hard nproc 65535
* soft nofile 65535
* hard nofile 65535
eof

    cat >>/etc/sysctl.conf<<eof
fs.file-max=65535
eof
}


function installDevTools() {
    yum groupinstall -y "Development tools"
}

setTimezone
disableSeLinux
optimize
installDevTools
