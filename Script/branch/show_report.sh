show_report() {
    ans=($1)
    cd ..
    cd ..
    cd 'Informe'
    if [ ! -f Informe.pdf ]
    then
    pdflatex 'Informe'.tex
    fi

    if [ $# -gt 0 ] 
    then
    $ans 'Informe'.pdf
    else
    xdg-open 'Informe'.pdf
    fi
}

while true 
do
echo "Do you want to use the default viewer? [y/n -> (yes/no)]"
read a
if [[ ! $a =~ ^["a"-"z"]+$ ]]
then
echo -e "You didn't select a valid token\n"
elif [ $a = "y" ] 
then 
show_report
break
elif [ $a = "n" ]
then
while true
do
echo "Type the command to open the file wiewer that you want"
read b
if [[ $b = "" ]]
then
echo -e "Try again\n"
else
show_report $b
break
fi
done
break
else 
echo -e "You didn't select a valid token\n"
fi
done