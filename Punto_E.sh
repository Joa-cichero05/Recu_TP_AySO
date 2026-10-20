mkdir Punto_E
cd Punto_E/
grep MemTotal /proc/meminfo > Filtro_basico.txt
grep "model name" /proc/cpuinfo | awk -F ':' '{print$2}' | head -n1 >> Filtro_basico.txt 
grep "cpu MHz" /proc/cpuinfo | awk -F ':' '{print$2}' | head -n1 >> Filtro_basico.txt 
