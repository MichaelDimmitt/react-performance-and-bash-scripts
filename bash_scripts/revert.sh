lib=$(dirname $PWD/$0)
base=$lib/../project-one/src/


rm $lib/temp1.txt $lib/temp2.txt
rm $lib/sed.*
cp $lib/backup.tsx ${base}App.tsx;

for ((i=1;i<=100;i++)); 
do 
   # your-unix-command-here
   rm ${base}Hello$i\.tsx &>/dev/null
done
