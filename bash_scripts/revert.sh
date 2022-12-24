
allinonefolderlocation=$(dirname $PWD/$0)
base=$allinonefolderlocation/../project-one/src/


rm temp1.txt temp2.txt
cp backup.tsx ${base}App.tsx;
for ((i=1;i<=100;i++)); 
do 
   # your-unix-command-here
   rm ${base}Hello$i\.tsx
done
