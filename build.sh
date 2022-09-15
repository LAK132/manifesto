#! /bin/sh
mkdir -p build
pandoc \
  --from=latex \
  --to=html \
  --standalone \
  --self-contained \
  --number-sections \
  --table-of-contents \
  --listings \
  --metadata=link-citations:true \
  --output=build/index.html \
  --bibliography=bibliography.bib \
  --csl=acm-sigchi-proceedings.csl \
  --css=style.css \
  --lua-filter=filter.lua \
  main.tex
