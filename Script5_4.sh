MaxSize=0
for i in `ls -l|tr -s " "|cut -f 5 -d " " `
do
if [ $MaxSize -le $i ]
then
MaxSize=$i
fi
done
echo maximum size is: $MaxSize
