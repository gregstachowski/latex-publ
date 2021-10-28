del -f publ.aux publ.bbl publ.bcf publ.blg publ.log publ.run.xml publ.synctex.gz publ.pdf
pdflatex.exe publ
biber.exe publ
pdflatex.exe publ
pdflatex.exe publ
htlatex.exe publ.tex
htlatex.exe publ.tex "xhtml,ooffice" "ooffice/! -cmozhtf" "-coo -cvalidate"
del publ.4?? publ.idv publ.lg publ.tmp publ.xref texput.log publ.dvi

