RM := rm -f

objects := $(subst .c,.o,$(sources))
include_dirs := .. ../../include
CPPFLAGS += $(addprefix -I ,$(include_dirs))

vpath %.h $(include_dirs)

.PHONY: library
library: $(library)

$(library): $(objects)
	$(AR) $(ARFLAGS) $@ $^

.PHONY: clean
clean:
	$(RM) $(objects) $(program) $(library) $(extra_clean)