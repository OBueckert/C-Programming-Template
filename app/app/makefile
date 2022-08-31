program := app
sources := app.c
libraries := -lmodule1 -lmodule2

lib_dirs := $(BIN)
vpath %.a $(lib_dirs)

all: $(BIN)/$(program)

include ../../common.mk

$(BIN)/$(program): $(BIN)/$(objects) $(libraries)