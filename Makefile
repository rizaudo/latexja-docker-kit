
OUTDIR = build
current_dir = $(shell pwd)

LATEXMK = latexmk
LATEXMK_FLAG = -lualatex -r $(current_dir)/.latexmkrc --outdir=$(OUTDIR)

PROJECTFILE = main

DEFAULT: $(PROJECTFILE).pdf

.PHONY: all continue clean

%.pdf: %.tex
	$(LATEXMK) $(LATEXMK_FLAG) $^

continue:
	$(LATEXMK) -pvc $(LATEXMK_FLAG) $(PROJECTFILE).tex

clean:
	$(LATEXMK) -C $(LATEXMK_FLAG)
