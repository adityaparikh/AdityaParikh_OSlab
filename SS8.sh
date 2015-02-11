read -p "Enter file name:" fname
echo "Number of newline character in file" $fname
echo "is"
wc -l $fname
