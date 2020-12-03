#!/bin/bash
# Necesitas crear un cron para automatizarlo

#Montando los discos > dependiendo de los discos que intercambien las UUID 
mount /dev/disk/by-uuid/65F33762C14D581B /media/disco-externo
mount /dev/disk/by-uuid/6472AA1A72A9F14A  /media/disco-externo

day=$(date +%A)
 echo  "copia dx del $day "

#################################################################################

#ubificacion de la carpeta .

backup_files="/home"

#Destino

dest="/media/disco-externo"
#################################################################################

#Esto pondra el dia de la semana por cada copia ejecutada

day=$(date +%A)

 hostname=$(hostname -s)

archive_file="$hostname-$day.tgz"

echo "Backing up $backup_files to $dest/$archive_file"

date

echo
#----
#tipo de arhivo
tar czf $dest/$archive_file $backup_files

 echo

 echo "Copia completada"

date

 ls -lh $dest

echo "Copia completada con exito"
