clean() {
    cd ..
    cd ..
    cd 'MoogleEngine'
    rm -r bin obj
    cd ..
    cd 'MoogleServer'
    rm -r bin obj
    cd ..
    cd 'Informe'
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk 
    cd ..
    cd 'Presentación del proyecto'
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk *.nav *.snm *.vrb
    cd ..
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk *.sln *.txt
    cd 'Presentación del proyecto'
    cd Secciones
    rm -f *.aux
}
clean