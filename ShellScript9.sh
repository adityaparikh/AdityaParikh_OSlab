while [ 1 ]
do
read -p " Enter capital of Gujarat:" cap
if [ $cap = 'Gandhinagar' ]
then
echo "True answer"
exit 1
else
echo "Enter correct answer."
continue
fi
done
