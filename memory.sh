#!/bin/bash

free -h

echo "Memory Usage"

free | awk '/Mem/ {printf("%.2f%%\n",$3/$2*100)}
#!/bin/bash

{
echo "===================================="
echo "Linux Health Report"
date
echo "===================================="

./cpu.sh
./memory.sh
./disk.sh
./process.sh

} >> report.log'
