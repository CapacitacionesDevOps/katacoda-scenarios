number_random=$RANDOM
file="branch_$number_random.txt"
git init
sleep 3
mkdir Aprendiendo_Git
cd Aprendiendo_Git
echo 'console.log("Modificado por otro desarrollador");' > $file
git add $file
git commit -m "Commit Inicial"