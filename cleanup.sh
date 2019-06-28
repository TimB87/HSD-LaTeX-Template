#!/bin/sh
for i in *aux *bbl *bcf *blg *dvi *lof *log *lot *out *run.xml *synctex.gz *tex.latexmain *toc; do
  rm $i;
done
