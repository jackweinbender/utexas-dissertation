# utexas-dissertation

This repo contains several `.sty` files that together produce a Graduate School compliant dissertation for the University of Texas at Austin. I built it for my own dissertation, submitted to the Graduate School in the Summer of 2019.

## How to use this package
Although I've included a `.cls` file, all it does is extend the `Memoir` class to include all of the `.sty` files. Because not all dissertations have the same needs (e.g., I have to use a special citation format, and my advisor wanted double-spaced footnotes) I would recommend that you use the `Memoir` class as the base of your dicument and include whichever packages make sense for your project. For example, the `utexas-typography.sty` file includes specific font preferences for the langauges that I used for my dissertation (English, Hebrew, Aramaic, Geˁez, Greek, and special IPA/Transliteration fonts); it is likely that these lnagauges are not relevant to your work. 

The `utexas-dissertation-frontmatter.sty` file, however, you will almost certainly want to use. It defines all of the frontmatter (abstract, title page, copyright, supervisory coversheet, etc.)

### Installation
To install these styles, you need to clone or download this repo and move this whole folder into your `texmf/tex/latex` folder (or equivalent). You can then include individual styles with `\usepackage{utexas-dissertation-[package]}` or use the `.cls` file by declaring your doctype with `\documentclass[letterpaper,12pt,oneside]{utexas-dissertation}`

### Example 

    % !TEX TS-program = xelatex
    % !TEX encoding = UTF-8 Unicode
    % !TEX spellcheck = en-US
    % !BIB program = biber


    \documentclass[letterpaper,12pt,oneside]{memoir}

    \usepackage{utexas-dissertation-frontmatter}
    \usepackage{utexas-dissertation-toc}
    \usepackage{utexas-dissertation-page}
    \usepackage{utexas-dissertation-typography}
    \usepackage{utexas-dissertation-headings}
    \usepackage{utexas-dissertation-footnotes}

    % Bibliographic Styles
    \usepackage{biblatex}
    \addbibresource{../bib/bibliography.bib}

    \begin{document}

    \frontmatter
    
    % Document meta
    \author{[Your Name Here]}
    \date{[Month of Submission August, December, or May] YEAR}
    \title{Your Title}
    
    % utexas-dissertation-frontmatter specific meta
    \subtitle{Subtitle}
    \doctype{Dissertation}
    \institution{The University of Texas at Austin}
    \degree{Doctor of Philosophy}
    \degreeabbr{Ph.D.}


    % Copyright Page Info
    \copyrightyear{YEAR}
    \makecopyright


    % Signature Page Details
    \numberofmembers{4}
    \supervisor{[Supervisor]}
    \memberone{[Member #1]}
    \membertwo{[Member #2]}
    \memberthree{[Member #3]}
    \makesignatures

    % Title Page
    \maketitle

    \clearpage
    \chapter*{Acknowledgments}
    ...
    
    \mainmatter

    \input{_00_introduction.tex}
    \input{_chapter_01.tex}
    ...

    \backmatter

    \printbibliography[heading=bibintoc]

    \chapter{Vita}
    ...

    \end{document}
