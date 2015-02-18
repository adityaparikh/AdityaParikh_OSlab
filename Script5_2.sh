read -p "Enter string:" string
reverse=`expr $string |rev`
if [ "$reverse" == "$string" ]
then echo "palindrom"
else
echo "not palindrom"
fi
