#!/usr/bin/env bash

sudo apt-get install -y openssl build-essential xorg libssl-dev
wget http://wkhtmltopdf.googlecode.com/files/wkhtmltopdf-0.11.0_rc1-static-i386.tar.bz2
echo 'untar'
tar xvjf wkhtmltopdf-0.11.0_rc1-static-i386.tar.bz2
echo 'chown'
sudo chown root:root wkhtmltopdf-i386
echo 'export'
export WKHTMLTOPDF_CMD=`pwd`/wkhtmltopdf-i386
$WKHTMLTOPDF_CMD --version
