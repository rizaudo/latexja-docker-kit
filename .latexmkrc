#!/usr/bin/env perl
#取り敢えずの用意
$pdflatex = 'lualatex %O -synctex=1 -interaction=nonstopmode -shell-escape %B';
$latex= 'platex %O -synctex=1 -interaction=nonstopmode -kanji=utf8 -shell-escape %B';
$bibtex = 'pbibtex %O -kanji=utf8 %B';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$dvipdf= 'dvipdfmx %O -p jisb5 -d 5 -o %D %S';
$makeindex  = 'mendex %O -o %D %S';
$pdf_mode = 4;
$pdf_update_method = 3;
