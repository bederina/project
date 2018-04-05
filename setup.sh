#! /bin/bash

echo "en cours d'instalation ....................."

chmod +x "initdev.sh"
sudo cp "initdev.sh" "/bin"

sleep 3

cd /home
mkdir "initdev"

cd initdev

mkdir "bin"
mkdir "licenes"
mkdir "makfile"
mkdir "source"
touch "main.sh"


cd "source"

mkdir "Project_cpp"
mkdir "Project_C"
mkdir "Project_Python"
mkdir "Project_Latex"
mkdir "Project_Beamer"

cd "/home/initdev/licenes"

mkdir "Project_GPL"
mkdir "Project_MIT"



cat "/bin/initdev.sh">>"/home/initdev/main.sh"

cp "/home/setup.sh"  "/home/initdev"

cd "/bin"

mv "initdev.sh" "initdev"






echo "se termine avec secc pour le test utiliser la command initdev"








