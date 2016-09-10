all: bcompile.1.bz2

bcompile.1.bz2: bcompile.1
	bzip2 -k bcompile.1

clean:
	@rm -f bcompile.1.bz2

.PHONY: all clean
