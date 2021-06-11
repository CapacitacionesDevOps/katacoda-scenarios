number_random=$RANDOM
file="merge_$number_random.txt"
mkdir Aprendiendo_Git
cd Aprendiendo_Git
git init
echo 'console.log("Modificado por mi");' > $file
git add $file
git commit -m "Commit Inicial"
sleep 3
git checkout -b "feature/cambio_archivo"
sleep 3
echo 'console.log("Modificado por otro desarrollador");' > $file
git add $file
git commit -m "Commit Inicial"
sleep 3
git checkout "master"
echo 'console.log("Modificado por mi nuevamente");' > $file
git add $file
git commit -m "Se modifica el archivo por mi, nuevamente"