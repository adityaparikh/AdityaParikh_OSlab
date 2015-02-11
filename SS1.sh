echo "Welcome"
while [ 1 ]
do
echo "Enter number below 50:"; read num
if [ $num -gt 50 ]
then echo "Enter number less than 50 " 
continue
else 
echo " Square of $num is" `expr $num \* $num`
fi
done
