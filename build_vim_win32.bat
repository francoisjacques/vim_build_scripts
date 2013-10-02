REM Build vim for Win64, Pentium4, with python, ruby and perl interpreters support
REM Python from \\mtlnetapp02b\GTGsiNewBuild\Tools\Python\python-2.7.3.amd64.msi
REM Perl from \\mtlnetapp02b\GTGsiNewBuild\Tools\Perl\ActivePerl-5.8.9.825-MSWin32-x64-288577.msi
REM Ruby 1.9 from ftp://ftp.ruby-lang.org/pub/ruby/binaries/mswin32/ruby-1.9.2-p0-x64-mswin64_80.zip
REM
REM ********************************************************
REM The directory separator MUST be backslash!
REM ********************************************************

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
set DYNAMIC_RUBY=yes
REM Doesn't work unless you compile with VC2008, until Ruby SDK gets release with VC2010-friendly headers
REM set RUBY=C:\Ruby-x64
REM set RUBY_VER=19
REM set RUBY_VER_LONG=1.9.1
REM set RUBY_PLATFORM=x64-mswin64_80
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