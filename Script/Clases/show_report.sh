show_report() {
    ans=($1)
    cd ..
    cd ..
    cd Informe
    if [ ! -f Informe.pdf ]
    then
    pdflatex Informe.tex
    fi

    if [ $# -gt 0 ] 
    then
    $ans Informe.pdf
    else
    xdg-open Informe.pdf
    fi
}

while true 
do
echo "Desea abrir el archivo con el visualizador por defecto? [S/n -> (sí/no)]"
read a
if [[ ! $a =~ ^["a"-"z"]+$ ]]
then
echo -e "Opción no válida\n"
elif [ $a = "y" ] 
then 
show_report
break
elif [ $a = "n" ]
then
while true
do
echo "Escriba el comando correspondiente para abrir el archivo con el visualizador que desee"
read b
if [[ $b = "" ]]
then
echo -e "Inténtelo de nuevo\n"
else
show_report $b
break
fi
done
break
else 
echo -e "Opción no válida\n"
fi
done