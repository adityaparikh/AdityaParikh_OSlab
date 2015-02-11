read -p "Enter number:" num
i=0
sum=0
while [ $i -le $num ] 
do
sum=` expr $sum + $i `
i=` expr $i + 1 `
done
echo "The sum of " $num echo "natural numbers is " $sum
