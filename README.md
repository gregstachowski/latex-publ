# latex-publ
LaTeX template to create list of papers from [ADS](https://ui.adsabs.harvard.edu/) (Harvard Astronomical Data System Abstract Service) exported bibliography

## Instructions
1. Search for and select list of articles in ADS (use the [New ADS interface](https://ui.adsabs.harvard.edu/)).
2. Export in BibTex format.
3. Download or copy to a file called "export-bibtex.bib" (this is the default name in ADS).
4. Add any extra publications not (or wrong) in ADS to a file called "publ.bib" in BibTex format, and edit or comment out any entries you don't want in `export-bibtex.bib`. 
5. With `publ.tex`, `aas_macros.sty`, `export-bibtex.bib` and (if used) `publ.bib` and `aas_macros_full.sty` in the same directory, compile `publ.tex` using `build.bat` or `build.sh` as described below:

### For TexStudio with TexLive (compile to PDF only, may work but not tested with other TeX versions):
1. Go to Options|Configure TexStudio|Build and set Default Bibliography Tool to Biber.
2. Compile (or press F6).
3. Go to Tools|Bibliography (or press F8 or F11 depending on your version of TexStudio).
4. Compile.

### For Windows with TexLive 
Get TexLive from https://www.tug.org/texlive/acquire-netinstall.html, then run:    
    `build.bat` 

### For Linux command line 
Most Linux distributions use TexLive. Make sure you have pdflatex and biber installed, then run:  

    `./build.sh`

By default a PDF file `publ.pdf` is created. If `htlatex` is installed, the Linux build script will also create `publ.html`, `publ.css` (HTML with CSS formatting) and `publ.odt` (OpenOffice) files for your convenience.

### WARNING: biber version 2.14 and possibly some other versions DO NOT WORK with ADS bibtex files! biber version 2.16 works fine. Older biber versions e.g. 2.9 probably work fine.
 
Default is Polish, for English change `\let\usepolish=1` to `=0`.   
Default sorting is newest first, for oldest first change `\let\sortdescending=1` to `=0`.

## Versions
- 2.1b, GS 2018-12-20. Requires `aas_macros.sty`, `pdflatex`, `biber` and `texlive-lang-polish`.
- 2.2g, GS 2021-10-28. Requires `aas_macros_full.sty` + all above + `texlive-plain generic`.

