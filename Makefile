.PHONY: all
all: python c asm

.PHONY: python
python:
	@$(MAKE) -C python/

.PHONY: c
c:
	@$(MAKE) -C c/

.PHONY: asm
asm:
	@$(MAKE) -C asm/
