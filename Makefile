#
# Makefile
# Easwy Yang
# 2009/11/19 

DIRS=debian vim wordpress web

all:
	for d in $(DIRS); do make -C $${d} -f Makefile; done

