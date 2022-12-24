# variables
# whereami="$PWD/$0"
# folderlocation=$(dirname $whereami)
# echo I am here: $folderlocation

allinonefolderlocation=$(dirname $PWD/$0)
base=$allinonefolderlocation/../project-one/src/

echo $base
suffix=App.tsx;
target=$base$suffix


cp backup.tsx $target
rm -rf temp1.txt;
rm -rf temp2.txt;

for ((i=1;i<=100;i++)); 
do 
   # your-unix-command-here
   echo "import Hello$i from './Hello$i'" >> temp1.txt;
done

for ((i=1;i<=100;i++)); 
do 
   # your-unix-command-here
   echo "<Hello$i/>" >> temp2.txt
done

line2=21
tmp="./sed.1.$$"
sed -e "${line2}r temp2.txt" $target > $tmp
cp $tmp $target

line=3
tmp="./sed.$$"
sed -e "${line}r temp1.txt" $target > $tmp
cp $tmp $target


for ((i=1;i<=100;i++)); 
do 
   # your-unix-command-here
   cp backup.tsx ${base}Hello${i}\.tsx
done
