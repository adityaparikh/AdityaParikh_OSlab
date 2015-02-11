read -p "Enter the filename:" fname
cat $fname | tr -d '\n' | tr -s " " '\n' | wc -l
