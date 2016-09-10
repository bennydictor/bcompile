# BCompile
BCompile - Benny's compile

Bcompile is a Perl script for compilation and testing single-file
terminal applications written in C and C++.

# Usage
See man after installation:
```sh
$ man 1 bcompile
```

# Dependencies
## Run time
* Perl 5

## Build time
* GNU Make
* bzip2

# Installation
## Manual
```sh
$ make
# make install
```

# TODO
* File type detection by the file(1) utility, rather than by extention.
* Other programming languages support
* More flexible configuration
* Write .deb, .pkg, .ebuild, etc.
