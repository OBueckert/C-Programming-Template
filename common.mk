RM := rm -f

objects := $(subst .c,.o,$(sources))
include_dirs := .. ../../include
CPPFLAGS += $(addprefix -I ,$(include_dirs))

vpath %.h $(include_dirs)

.PHONY: library
library: $(BIN)/$(library)

$(BIN)/$(library): $(BIN)/$(objects)
	$(AR) $(ARFLAGS) $@ $^

$(BIN)/$(objects): $(sources)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $^ -o $@

.PHONY: clean
clean:
	$(RM) $(BIN)/*