\rm -f publ.aux publ.bbl publ.bcf publ.blg publ.log publ.run.xml publ.synctex.gz publ.pdf
pdflatex publ
biber publ
pdflatex publ
pdflatex publ
command -v htlatex
status=$?
if [ $status -eq 0 ]; then
	htlatex publ.tex
	htlatex publ.tex "xhtml,ooffice" "ooffice/! -cmozhtf" "-coo -cvalidate"
	\rm -f publ.4* publ.idv publ.lg publ.tmp publ.xref texput.log publ.dvi
fi
