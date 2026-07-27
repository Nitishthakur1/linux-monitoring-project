#!/bin/bash

DATE=$(date)

echo "==============================="
echo "Linux Monitoring Report"
echo "$DATE"
echo "==============================="

echo ""
./cpu.sh

echo ""
./memory.sh

echo ""
./disk.sh

echo ""
./process.sh
