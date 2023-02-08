#!/bin/bash

data_godzina=$(date +%F_%T)

# tworzymy w katalogu backup podkatalog z aktualną datą i godziną w nazwie
mkdir /home/$USER/backup/$data_godzina

# zamieszczamy wzmiankę o utworzeniu kopii w pliku backup_sources.conf
echo $data_godzina $2 >> /home/$USER/bin/backup_sources.conf

# kopiujemy zawartość wskazanego folderu do nowo utworzonego
# podkatalogu w backup
cp -r $2/* /home/$USER/backup/$data_godzina

