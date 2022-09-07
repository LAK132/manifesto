#! /bin/sh
mkdir -p build
pandoc --from=latex --to=html --standalone --output=build/index.html --bibliography=bibliography.bib --csl=acm-sigchi-proceedings.csl --number-sections --table-of-contents main.tex
