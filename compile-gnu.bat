rem @echo off
setlocal
set CFLAGS= -fbounds-check -Wuninitialized -O0 -static
set LFLAGS= -static -O0
set EXE=ctgproc_v7.exe

gfortran -c %CFLAGS% ctgproc.for
gfortran -o %EXE% %LFLAGS% ctgproc.o

del *.o
del *.mod
~              
