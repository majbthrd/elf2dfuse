ifeq ($(OS),Windows_NT)
	EXE_SUFFIX = .exe
endif

ELF2DFUSE_C = elf2dfuse.c

all: elf2dfuse$(EXE_SUFFIX)

elf2dfuse$(EXE_SUFFIX): Makefile $(ELF2DFUSE_C)
	gcc $(ELF2DFUSE_C) -o $@ $(CFLAGS)
	strip $@

clean:
	rm -f elf2dfuse$(EXE_SUFFIX)
