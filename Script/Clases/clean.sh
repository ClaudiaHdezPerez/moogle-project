clean() {
    cd ..
    cd ..
    cd MoogleEngine
    rm -r bin obj
    cd ..
    cd MoogleServer
    rm -r bin obj
    cd ..
    cd Informe
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk 
    cd ..
    cd Presentación
    rm -f *.aux *.lot *.lof *.log *.toc *.dvi *.ps *.bbl *.out *.synctex.gz *.fls *.fdb_latexmk *.nav *.snm *.vrb
    cd Secciones
    rm -f *.aux
}
clean