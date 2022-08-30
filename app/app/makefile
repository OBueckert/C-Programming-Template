program := app
sources := app.c
libraries := -lmodule1 -lmodule2

lib_dirs := ../../lib/module1 ../../lib/module2
vpath %.a $(lib_dirs)

all: $(program)

include ../../common.mk

$(program): $(objects) $(libraries)