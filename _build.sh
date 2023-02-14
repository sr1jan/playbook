#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.rmd', 'bookdown::epub_book')"
