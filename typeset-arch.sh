#!/bin/bash
/bin/pandoc \
	-f markdown \
	--latex-engine=/bin/pdflatex \
	--smart \
	--variable documentclass=sig-alternate-05-2015 \
	--filter table-filter.py \
	--filter=/bin/pandoc-citeproc \
	--bibliography=sigproc.bib \
	--csl=acm-sig-proceedings-long-author-list.csl \
	metadata.yml sig-alternate-sample.md \
	-o sig-alternate-sample.pdf
