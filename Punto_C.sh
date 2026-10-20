sudo groupadd p1c1_2026_Todos
sudo cat /etc/shadow
sudo grep p1c1_2026_u1 /etc/shadow
sudo grep p1c1_2026_u1 /etc/shadow | awk -F ':' '{print$2}'
sudo useradd -m -s /bin/bash -g p1c1_2026_Todos -p "$(sudo grep p1c1_2026_u1 /etc/shadow | awk -F ':' '{print$2}')" p1c1_2026_u2
man usermod
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1
sudo chgrp -R p1c1_2026_Todos /datos/
sudo chmod -R 775 /datos/
sudo su -c "id >> /datos/validar1.txt" p1c1_2026_u2 
