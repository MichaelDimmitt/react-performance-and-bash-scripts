cp backup.tsx ../project-one/src/App.tsx;
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
sed -e "${line2}r temp2.txt" ../project-one/src/App.tsx > $tmp
cp $tmp ../project-one/src/App.tsx

line=3
tmp="./sed.$$"
sed -e "${line}r temp1.txt" ../project-one/src/App.tsx > $tmp
cp $tmp ../project-one/src/App.tsx


for ((i=1;i<=100;i++)); 
do 
   # your-unix-command-here
   cp backup.tsx ../project-one/src/Hello$i\.tsx
done
