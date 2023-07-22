while  true 
do
    echo -e "Write down the number of the option you want: \n1 --> run \n2 --> report \n3 --> slides \n4 --> show_report \n5 --> show_slides \n6 --> clean \n7 --> exit" 
    read op

    if [[ ! $op =~ ^[0-9]+$ ]]
    then
    echo "You did not select any of the given numbers"

    elif [ $op -eq 1 ] 
    then 
    cd branch; bash run.sh; cd ..; clear;

    elif [ $op -eq 2 ]
    then
    cd branch; bash report.sh; cd ..; clear;

    elif [ $op -eq 3 ]
    then
    cd branch; bash slides.sh; cd ..; clear;

    elif [ $op -eq 4 ]
    then
    cd branch; bash show_report.sh; cd ..; clear;

    elif [ $op -eq 5 ]
    then
    cd branch; bash show_slides.sh; cd ..; clear;

    elif [ $op -eq 6 ]
    then
    cd branch; bash clean.sh; cd ..; clear;

    elif [ $op -eq 7 ]
    then
    exit

    else
    echo "You did not select any of the given numbers"

    fi
    
done