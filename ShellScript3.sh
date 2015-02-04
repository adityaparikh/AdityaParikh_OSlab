read -p "Enter number1:" num1
read -p "Enter number2:" num2
read -p "Enter $operator:" op
if [ "$op" == + ]
then echo " Addition of $num1 and $num2 is "`expr $num1 + $num2`
elif [ "$op" == - ]
then echo " Subtraction of $num1 and $num2 is "`expr $num1 - $num2`
elif [ "$op" == \* ] 
then echo " Multiplication of $num1 and $num2 is "`expr $num1 \* $num2` 
elif [ "$op" == / ]
then echo " Division of $num1 and $num2 is "`expr $num1 \/ $num2`
elif [ "$op" == \% ]
then echo " Modulo of $num1 and $num2 is "`expr $num1 \% $num2`
fi
