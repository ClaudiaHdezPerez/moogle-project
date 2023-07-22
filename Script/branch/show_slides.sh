show_slides() {
    ans=($1)
    cd ..
    cd ..
    cd 'Presentación del proyecto'
    if [ ! -f Presentación.pdf ]
    then
    pdflatex 'Presentación'.tex
    fi
    
    if [ $# -gt 0 ] 
    then
    $ans Presentación.pdf
    else
    xdg-open Presentación.pdf
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
show_slides
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
show_slides $b
break
fi
done
break
else 
echo -e "You didn't select a valid token\n"
fi
done