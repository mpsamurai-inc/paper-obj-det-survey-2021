bibtex では、うまくいかない。
jbibtex はインストールされていない。
pbibtex を使うと旨くいく。
次の手順でうまくいく。

$ platex template-j
$ pbibtex template-j
$ platex template-j
$ platex template-j
$ dvipdfmx template-j
