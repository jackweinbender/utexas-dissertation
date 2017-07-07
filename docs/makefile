tmp = .tmp
title = utexas-dissertation

build:
	@ xelatex -no-pdf --output-directory=$(tmp) $(title).tex && \
	biber $(tmp)/$(title) && \
	xelatex -no-pdf --output-directory=$(tmp) $(title).tex && \
	biber $(tmp)/$(title) && \
	xelatex --output-directory=$(tmp) $(title).tex && \
	mv $(tmp)/$(title).pdf $(title).pdf