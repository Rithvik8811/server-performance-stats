#!/bin/bash

echo "========================================"
echo "        SERVER PERFORMANCE STATS"
echo "========================================"
echo

# -------------------------------
# CPU Usage
# -------------------------------
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " 100 - $8 "%"}'
echo

# -------------------------------
# Memory Usage
# -------------------------------
echo "Memory Usage:"
free -h | awk '/^Mem:/ {
    printf "Total: %s\nUsed: %s\nFree: %s\nUsage: %.2f%%\n",
    $2, $3, $4, ($3/$2)*100
}'
echo

# -------------------------------
# Disk Usage
# -------------------------------
echo "Disk Usage:"
df -h --total | awk '/total/ {
    printf "Total: %s\nUsed: %s\nFree: %s\nUsage: %s\n",
    $2, $3, $4, $5
}'
echo

# -------------------------------
# Top 5 Processes by CPU
# -------------------------------
echo "Top 5 Processes by CPU Usage:"
printf "%-10s %-10s %-10s %s\n" "PID" "CPU%" "MEM%" "COMMAND"

ps -eo pid,%cpu,%mem,comm --sort=-%cpu | head -n 6
echo

# -------------------------------
# Top 5 Processes by Memory
# -------------------------------
echo "Top 5 Processes by Memory Usage:"
printf "%-10s %-10s %-10s %s\n" "PID" "CPU%" "MEM%" "COMMAND"

ps -eo pid,%cpu,%mem,comm --sort=-%mem | head -n 6
echo

# -------------------------------
# Stretch Goals
# -------------------------------
echo "Operating System:"
grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'
echo

echo "System Uptime:"
uptime -p
echo

echo "Load Average:"
uptime | awk -F'load average:' '{print $2}'
echo

echo "Logged-in Users:"
who | wc -l
echo

echo "========================================"
echo "             END OF REPORT"
echo "========================================"
