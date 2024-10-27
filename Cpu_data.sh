#!/bin/bash

echo "CPU usage"
top -n 1 | grep "Cpu"   

echo "Memory usage"
free -h

echo "Disk space"

df -h