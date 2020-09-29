#!/bin/csh

set LATEX209=jlatex
set LATEX2E=platex
set BIBTEX=jbibtex

### format LaTeXe templates and guide
foreach target ( guide template-j template-e template-o )
    $LATEX2E  $target
    $BIBTEX   $target
    $LATEX2E  $target
    $LATEX2E  $target
    $LATEX2E  $target
end

### generate guide.ps
dvips -o ../guide.ps -t a4 guide.dvi
#dvips -Ppdf -o ../guide.ps -t a4 guide.dvi

### convert guide.dvi to pdf
dvipdfmx -o ../guide.pdf -p a4 guide.dvi

### format LaTeX 209 files
# foreach target ( template209-j template209-e template209-o )
#     $LATEX209 $target
#     $BIBTEX   $target
#     $LATEX209 $target
#     $LATEX209 $target
#     $LATEX209 $target
# end
