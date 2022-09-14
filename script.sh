#!/bin/sh

backup_arquivos="/home/suporte"
destino="/home/script-backup/backup"

dia=$(date +%d-%m-%y)
hostname=$(hostname -s)

arquivo="$hostname-$dia.tar.gz"

sleep 1

echo "Realizando backup: $backup_arquivos para $destino/$arquivo"

sleep 1

tar -zcvf $destino/$arquivo $backup_arquivos

sleep 1

echo "Backup realizado com sucesso!"

ls -lh $destino
