echo "enter the first file:"
read f1
echo "enter the 2nd file:"
read f2
if [ -e $f1 ]
then echo "First file exists."
else
echo "First file does not exists."
fi
if [ -e $f2 ]
then 
	count=1
	echo "Second file is present"
else
	echo "Second file is not present"
fi

if [ $count -eq 1 ]
then cat $f1 >> $f2
else cat $f1 > $f2
fi
