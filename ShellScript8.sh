num3=0
num1=0
num2=1
echo " Enter number:"; read n
echo -n "$num1 "
echo -n "$num2 "
while((c<n))
do
num3=`expr $num1 + $num2`
echo -n "$num3 "
num1=$num2
num2=$num3
done
echo -e "\n"
