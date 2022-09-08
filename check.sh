#! /bin/sh
aspell --personal=${PWD}/words.txt --mode=tex --tex-check-comments -d en_AU -c main.tex
