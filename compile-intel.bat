@REM                                                                    + + +
@echo off

setlocal

set CFLAGS=/O2 /check:format /Qipo /Qprec-div- /QaxSSE2 /trace  /Qdiag-disable:8291
set LFLAGS=/O2 /Qipo /check:format /Qprec-div- /QaxSSE2

ifort /compile_only %CFLAGS% ctgproc.for

ifort /exe:%EXE% %LINK_FLAGS% ctgproc.obj

del *.obj
del *.mod

