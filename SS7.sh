read -p "Do you want to revoke the permission?" per
read -p "Enter file name:" fname
if [ $per = 'y' -o $per = 'Y' ]
then
read -p "Which Permission do you want to revoke?" revo
chmod -$revo $fname
echo " Read permission changed."
else
exit 1
fi

