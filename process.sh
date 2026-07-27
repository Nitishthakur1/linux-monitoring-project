#!/bin/bash

echo "Top 5 CPU Processes"

ps -eo pid,comm,%cpu --sort=-%cpu | head
