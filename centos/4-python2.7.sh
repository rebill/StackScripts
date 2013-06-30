#!/bin/bash

function installPython27() {
    yum install -y zlib-devel
    yum install -y bzip2-devel openssl-devel ncurses-devel
    wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tar.bz2
    tar jxf Python-2.7.5.tar.bz2
    cd Python-2.7.5
    ./configure --prefix=/usr/local
    make && make altinstall
}


function installDistribute() {
    wget --no-check-certificate https://pypi.python.org/packages/source/d/distribute/distribute-0.6.45.tar.gz
    tar zxf distribute-0.6.45.tar.gz
    cd distribute-0.6.45
    python2.7 setup.py install
}


function installPythonPip() {
    easy_install pip
}


cur_dir=$(pwd)
installPython27
cd $cur_dir
installDistribute
cd $cur_dir
installPythonPip
