clean() {
    cd ..
    cd ..
    cd 'Informe'
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk *.jpg
    cd ..
    cd 'Presentación del proyecto'
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk *.jpg *.nav *.snm *.vrb
    cd ..
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk *.jpg *.sln *.txt
    cd 'Presentación del proyecto'
    cd Secciones
    rm -f *.aux
}
clean