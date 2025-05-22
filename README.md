# latex-publ
LaTeX template to create list of papers from ADS exported bibliography

## Instructions
1. search for and select list of articles in ADS (use New ADS interface)
2. export in BibTex format
3. download or copy to a file called "export-bibtex.bib" (this is the default name in ADS)
4. add any extra publications not (or wrong) in ADS to a file called "publ.bib" in BibTex format and comment out any entries you don't want in export-bibtex.bib 
5. with publ.tex, aas_macros.sty, export-bibtex.bib and (if used) publ.bib and aas_macros_full.sty in the same directory, compile publ.tex as below:

### For TexStudio with TexLive (compile to PDF only, may work but not tested with other TeX versions):
1. go to Options|Configure TexStudio|Build and set Default Bibliography Tool to Biber
2. compile (or press F6)
3. go to Tools|Bibliography (or press F8 or F11 depending on your version of TexStudio)
4. compile

### For Windows with TexLive (from https://www.tug.org/texlive/acquire-netinstall.html)
    `build.bat` 

### For Linux command line (note: install pdflatex and biber!):
    `./build.sh`

By default a PDF file publ.pdf is created. If htlatex is installed, the Linux 
build script will also create publ.html, publ.css (HTML with CSS formatting) and publ.odt (OpenOffice) files.

## WARNING: biber version 2.14 and possibly some other versions DO NOT WORK with ADS bibtex files! biber version 2.16 works fine. Older biber versions e.g. 2.9 probably work fine.
 
Default is Polish, for English change `\let\usepolish=1` to `=0` .  
Default sorting is newest first, for oldest first change `\let\sortdescending=1` to `=0`.

## Versions
- 2.1b, GS 2018-12-20. Requires `aas_macros.sty`, `pdflatex`, `biber` and `texlive-lang-polish`.
- 2.2g, GS 2021-10-28. Requires `aas_macros_full.sty` + all above + `texlive-plain generic`.

