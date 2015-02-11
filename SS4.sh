echo "Enter Number:"; 
read num
flag=0
n=` expr $num / 2 `
i=2
while [ "$i" -lt "$n" ]
do
mod=` expr $num % $i `
if [ $mod == 0 ]
then 
flag=` expr $flag + 1 `
fi
i=`expr $i + 1 `
done
if [ "$flag" == 0 ]
then
echo "$num is a prime number"
else
echo "$num is not a prime number"
fi
