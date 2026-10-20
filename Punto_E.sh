mkdir Punto_E
cd Punto_E
cat /proc/meminfo
grep MemTotal /proc/meminfo > Filtro_basico.txt
 cat /proc/cpuinfo
grep "model name" /proc/cpuinfo | awk -F ':' '{print$2}' | head -n1 >> Filtro_basico.txt
 grep "cpu MHz" /proc/cpuinfo | awk -F ':' '{print$2}' | head -n1 >> Filtro_basico.txt
