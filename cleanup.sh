#!/bin/sh
for i in *aux *bbl *bcf *blg *dvi *lof *log *lot *out *run.xml *synctex.gz \
  *tex.latexmain *toc *fdb_latexmk *fls *idx *ind *ilg *glg *glo *xdy *gls \
  *nlo *nls *acn *acr *alg *glsdefs arara.xml *lol *toc1; do
  if [ -e $i ]; then rm $i >/dev/null ; fi
done
