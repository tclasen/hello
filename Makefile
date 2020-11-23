.DEFAULT:
	@for item in python c asm ; do \
		$(MAKE) --no-print-directory -C $${item}/ $< ; \
	done \