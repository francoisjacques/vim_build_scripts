REM Build vim for Win64, Pentium4, with python and perl interpreters support
REM It expects the vim snapshot to be at ..\vim
REM ********************************************************
REM Ruby support was problematic under Windows x64 at time
REM of writing and therefore is not enabled by this script.
REM ********************************************************
REM The directory separator MUST be backslash!
REM ********************************************************
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" amd64
cd ..\vim

setlocal
set CPU=AMD64
set CPUNR=pentium4
set WINVER=0x500
set OLE=yes
set GUI=yes
set FEATURES=HUGE
set NETBEANS=yes
set DYNAMIC_PYTHON=yes
set PYTHON=C:\Python27
set PYTHON_VER=27
set DYNAMIC_PERL=yes
set PERL=C:\Perl64
set PERL_VER=58
set SNIFF=yes
set CSCOPE=yes
set MBYTE=no
pushd src
nmake clean -f Make_mvc.mak
nmake all -f Make_mvc.mak
popd

set GUI=no
pushd src
nmake all -f Make_mvc.mak
popd
