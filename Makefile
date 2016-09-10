# Makefile
# Copyright (C) 2016 Michael Sorokin 
# 
# This file is part of Bcompile
# 
# Bcompile is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

all: doc README.md.bz2

doc:
	$(MAKE) -C doc

README.md.bz2:
	bzip2 -k README.md

install:
	@install -m 755 -d $(DESTDIR)/usr/bin
	@install -m 755 -d $(DESTDIR)/usr/share/doc/bcompile-0.1
	@install -m 755 -d $(DESTDIR)/usr/share/man/man1
	@install -m 755 bcompile $(DESTDIR)/usr/bin
	@install -m 644 README.md.bz2 $(DESTDIR)/usr/share/doc/bcompile-0.1
	@install -m 644 doc/bcompile.1.bz2 $(DESTDIR)/usr/share/man/man1

dist: clean
	@tar -cvf bcompile-0.1.tar.gz --exclude=./bcompile-0.1.tar.gz --exclude=./.git .

clean:
	@$(MAKE) -s -C doc clean
	@rm -f README.md.bz2 bcompile-0.1.tar.gz

.PHONY: all doc install dist clean
