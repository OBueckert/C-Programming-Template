app := app/app

lib_module1 := lib/module1
lib_module2 := lib/module2
libraries := $(lib_module1) $(lib_module2)

.PHONY: all $(app) $(libraries)
all: $(app)

$(app) $(libraries):
	$(MAKE) --directory=$@ $(TARGET)

$(app): $(libraries)
# Maybe libmodule2 depends on libmodule1
# $(lib_module2): $(lib_module1)

clean:
	$(MAKE) TARGET=clean