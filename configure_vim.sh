#!/bin/sh

# This script invokes vim's configuration script with a
# configuration I've found to be the most useful to me overtime.
#
# Customize to match your configuration needs :-)
#
# I don't need the archaic hardware support, nor extended locale support,
# therefore I choosed 'normal' vim configuration with cscope support.
#
# If you need to install vim somewhere else, integrate this line
# to the configure invocation below with your prefered path.
#
#   --prefix=/usr/local \
#
# For some reason, dynamic python support doesn't work well under
# cygwin. Since all python modules used right now are python 2.x scripts,
# python3 is left out of the configuration.
#
#   --enable-python3interp=yes \
#   --with-python3-config-dir=/usr/lib/python3.2/config \
export PYTHON_VER=27
export PYTHON3_VER=32

cd ../vim

./configure \
    --with-compiledby=`whoami` \
    --with-features=huge \
    --enable-cscope \
    --enable-luainterp=yes \
    --enable-pythoninterp=yes \
    --enable-perlinterp=yes \
    --enable-python3interp=yes \
    --enable-rubyinterp=yes \
    --enable-multibyte \
    --enable-fontset \
    --with-x=yes \
    --enable-xim \
    --enable-gui=gtk2 \
    --prefix=/usr/local \
    --with-tlib=ncursesw

./configure \

echo Ready to be built with make, and deployment with make install


