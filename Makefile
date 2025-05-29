FC=gfortran
FLIB=-O0 -fallow-argument-mismatch -Wno-argument-mismatch#-fbacktrace -g #

EXE=ctgproc_v7.exe

all:
	$(FC) $(FLIB) ctgproc.for -o $(EXE)

