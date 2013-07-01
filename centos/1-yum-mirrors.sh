#!/bin/bash

function addEPEL() {
    rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
}


function addRemi() {
    rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-remi
}


function update() {
    yum update -y
}


addEPEL
addRemi
update
