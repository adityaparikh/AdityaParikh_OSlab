echo -p "enter string ";
read search;
echo "Enter file name ";
read fname;
a= grep $search $fname;
if [ $? -eq 0 ]
then              
echo "Search successful" ;
else
echo "Search uncussessful";
fi
