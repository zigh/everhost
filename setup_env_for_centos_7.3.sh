#!/bin/sh


mkdir -p ~/setup/erlang/;
cd ~/setup/erlang/;
wget http://erlang.org/download/otp_src_20.3.tar.gz;
tar -xvf otp_src_20.3.tar.gz;

yum -y install make gcc gcc-c++ kernel-devel m4 ncurses-devel openssl-devel unixODBC-devel libtool libtool-ltdl-devel;
cd otp_src_20.3/;
mkdir /usr/local/erlang;
./configure --prefix=/usr/local/erlang;
make && make install;
ln -s /usr/local/erlang/bin/erl /usr/local/bin/erl;


