while  true 
do
    echo -e "Escoja una de las opciones siguientes con los números correspondientes: \n1 --> run \n2 --> report \n3 --> slides \n4 --> show_report \n5 --> show_slides \n6 --> clean \n7 --> exit" 
    read op

    if [[ ! $op =~ ^[0-9]+$ ]]
    then
    echo "Opción no válida"

    elif [ $op -eq 1 ] 
    then 
    cd Clases; bash run.sh; cd ..; clear;

    elif [ $op -eq 2 ]
    then
    cd Clases; bash report.sh; cd ..; clear;

    elif [ $op -eq 3 ]
    then
    cd Clases; bash slides.sh; cd ..; clear;

    elif [ $op -eq 4 ]
    then
    cd Clases; bash show_report.sh; cd ..; clear;

    elif [ $op -eq 5 ]
    then
    cd Clases; bash show_slides.sh; cd ..; clear;

    elif [ $op -eq 6 ]
    then
    cd Clases; bash clean.sh; cd ..; clear;

    elif [ $op -eq 7 ]
    then
    exit

    else
    echo "Opción no válida"

    fi
    
done