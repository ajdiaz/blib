#
# Makefile
# ajdiaz, 2016-02-07 09:19
#

SRCDIR=src
OUTBIN=./blib
BASHDOC=bashdoc
REQUIREMENTS=./requirements.txt


all:
	find $(SRCDIR) -type f -exec cat {} \; > $(OUTBIN)
	@echo "BLIB_VERSION='$(shell git describe --tags)'" >> $(OUTBIN)
	@while read line; do \
		echo "std::installed '$$line' || " \
			   "err::trace '$$line is required but not found'" >> $(OUTBIN); \
	done <$(REQUIREMENTS)
	@chmod 755 $(OUTBIN)
	@ls -l $(OUTBIN)

doc: all
	$(BASHDOC) -T blib -a blib -f README.md -o doc/blib.html blib

clean:
	rm -f $(OUTBIN) $(OUTBIN)-*
# vim:ft=make
#
