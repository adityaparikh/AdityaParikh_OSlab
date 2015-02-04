read num1
read num2
echo "The Addition of $num1 and $num2 is "`expr $num1 + $num2`
echo "The Subtraction of $num1 and $num2 is "`expr $num1 - $num2`
echo "The Multiplication of $num1 and $num2 is "`expr $num1 \* $num2`
echo "The Division of $num1 and $num2 is "`expr $num1 \/ $num2`
echo "The Modulo of $num1 and $num2 is "`expr $num1 \% $num2`

