tmp = .tmp
title = utexas-dissertation

default: build post-clean

build: prep
	@ xelatex -no-pdf --output-directory=$(tmp) $(title).tex && \
	biber $(tmp)/$(title) && \
	xelatex -no-pdf --output-directory=$(tmp) $(title).tex && \
	biber $(tmp)/$(title) && \
	xelatex --output-directory=$(tmp) $(title).tex

prep: pre-clean
	@ mkdir .tmp

pre-clean: 
	@ rm -rf .tmp

post-clean: 
	@ mv $(tmp)/$(title).pdf $(title).pdf && \
	rm -rf .tmp