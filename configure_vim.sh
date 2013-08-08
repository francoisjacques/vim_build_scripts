#!/bin/sh.exe
# Prepare VIM for a Unix build
cd ../vim
./configure --with-features=huge \
	    --enable-cscope \
	    --enable-luainterp=yes \
            --enable-pythoninterp=yes \
	    --with-python-config-dir=/usr/lib/python2.7/config \
# Python3 support is not widely spread at this time.
# Plugins I use don't need it, therefore disable it.
#           --enable-python3interp=yes \
	    --enable-perlinterp=yes \
	    --enable-rubyinterp=yes \
            --enable-gui=gtk2 \
            --with-features=big \
            --with-compiledby=`whoami` \
            --enable-multibyte \
            --enable-fontset \
            --with-x \
            --enable-xim \
            --prefix=/usr/local \
	    --with-tlib=ncursesw 

echo Ready to be built with make, and deployment with make install
