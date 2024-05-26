number=100
lib=$(dirname $PWD/$0)
base=$lib/../project-one/src/

suffix=App.tsx;
target=$base$suffix


cp $lib/backup.tsx $target
rm -rf temp1.txt;
rm -rf temp2.txt;

for ((i=1;i<=$number;i++)); 
do 
   # your-unix-command-here
   echo "import Hello$i from './Hello$i'" >> $lib/temp1.txt;
done

for ((i=1;i<=$number;i++)); 
do 
   # your-unix-command-here
   echo "<Hello$i/>" >> $lib/temp2.txt
done

line2=21
tmp="$lib/sed.1.$$"
sed -e "${line2}r $lib/temp2.txt" $target > $tmp
cp $tmp $target

line=3
tmp="$lib/sed.$$"
sed -e "${line}r $lib/temp1.txt" $target > $tmp
cp $tmp $target


for ((i=1;i<=$number;i++)); 
do 
   # your-unix-command-here
   cp $lib/backup.tsx ${base}Hello${i}\.tsx
done
