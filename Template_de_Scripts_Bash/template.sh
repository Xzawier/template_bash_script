#!/bin/bash
#echo -e "Please provide filename you want to create: \c"
#read -r file
i=0
CHEMIN=/home/kali/Documents/$1.sh

#Test si le fichier existe déjà
if [ -e $1.sh ]
then
    echo -e "\033[5;31;40m$1 existe déjà.\033[0m"
    exit 1
fi

echo $CHEMIN
touch $CHEMIN
echo '#!/bin/bash' > $CHEMIN
echo '#Purpose: ' >> $CHEMIN
echo '#Version: ' >> $CHEMIN
echo '#Created: '`date +%d.%m.%Y` at `date +%H:%M:%S` >> $CHEMIN
echo -e '#Author: Kommandant Baltowski\n' >> $CHEMIN
echo 'RED="\e[1;31m"' >> $CHEMIN
echo 'BLUE="\e[1;33m"' >> $CHEMIN
echo 'GREEN="\e[1;32m"' >> $CHEMIN
echo 'YELLOW="\e[1;33m"' >> $CHEMIN
echo 'PURPLE="\e[1;35m"' >> $CHEMIN
echo 'CYAN="\e[1;36m"' >> $CHEMIN
echo 'WHITE="\e[1;37m"' >> $CHEMIN
echo 'GREY="\e[1;30m"' >> $CHEMIN
echo 'REDB="\e[44m"' >> $CHEMIN
echo 'RESET_COLOR="\e[0m"' >> $CHEMIN
echo '#START#' >> $CHEMIN

while [[ $i -lt 5 ]]
do
    echo -e "\n" >> $CHEMIN
    i=`expr $i + 1`
done

echo '#END#' >> $CHEMIN
echo '#Kommandant Baltowski, tu déchires !' >> $CHEMIN

chmod a+x $CHEMIN
nano $CHEMIN
