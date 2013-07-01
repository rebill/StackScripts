#!/bin/bash

function installuWSGI() {
    pip install uWSGI
    mkdir -p /var/run/uwsgi
}


function installSupervisor() {
    pip install supervisor
    echo_supervisord_conf > /etc/supervisord.conf
    mkdir -p /etc/supervisor.d
    cat >>/etc/supervisord.conf<<eof
[include]
files = /etc/supervisor.d/*.ini
eof
}


function installMysqlPython() {
    pip install MySQL-python
}


function installFlask() {
    pip install Flask
}


function installFlaskExt() {
    pip install Flask-SQLAlchemy Flask-paginate Flask-Cache
}


function installZmq() {
    pip install pyzmq
}


function installFlaskZmq() {
    git clone https://github.com/rebill/flask-zmq.git
    cd flask-zmq
    python setup.py install
}


function installPylibmc() {
    pip install pylibmc
}


installuWSGI
installSupervisor
installMysqlPython
installFlask
installFlaskExt
installZmq
installFlaskZmq
installPylibmc
