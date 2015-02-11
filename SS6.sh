hour=` date +"%H" `
echo $hour
if [ $hour -ge 4 -a $hour -lt 12 ]
then
echo "Good Morning"
elif [ $hour -ge 12 -a $hour -lt 16 ]
then
echo "Good Afternoon"
elif [ $hour -ge 16 -a $hour -lt 20 ]
then
echo "Good Evening"
else
echo "Good Night"
fi
