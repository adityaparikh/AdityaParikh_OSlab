while [ 1 ]
do 
read -p "Enter salary:" salary
echo "Your HRA is"
echo $(($salary * 12 / 100))
done
