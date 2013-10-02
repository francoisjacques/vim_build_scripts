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

./configure \
    --with-compiledby=`whoami` \
    --with-features=normal \
    --with-tlib=ncursesw \
    --enable-cscope \
    --enable-luainterp=yes \
    --enable-pythoninterp=yes \
    --with-python-config-dir=/usr/lib/python2.7/config \
    --enable-perlinterp=yes \
    --enable-rubyinterp=yes \
    --with-x \
    --enable-xim \
    --enable-gtk2-check \
    --enable-gnome-check \
    --enable-fontset

echo Ready to be built with make, and deployment with make install


