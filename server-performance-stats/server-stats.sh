#!/bin/bash

# ###################
# 
# Author: M-b-a-s
# Role: DevOps Engineer
# 
# Title: Server Performance Stats
# Date: June 19, 2026
#
#
# Source: roadmap.sh
# ###################



echo "System Information"

# 1. OS Version
OS=$(awk -F= '/PRETTY_NAME/ {gsub(/"/,"",$2); print $2}' /etc/os-release)
echo "OS: $OS"

# 2. Kernel Version
KERNEL=$(uname -r)
echo "Kernel Version: $KERNEL"

# 3. Uptime
UPTIME=$(uptime -p)
echo "Uptime: $UPTIME"

# 4. Load Average
LOAD_AVG=$(uptime | awk -F'load average:' '{ print $2 }
')
echo "Load Average: $LOAD_AVG"

# 5. Logged in users
LOGGED_IN_USERS=$(who | wc -l)
echo "Logged in Users: $LOGGED_IN_USERS"    

echo "CPU Usage"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
echo "Total CPU Usage: $CPU_USAGE%"

echo "Memory Usage"
MEM_INFO=$(free -h | grep Mem)
TOTAL_MEM=$(echo "$MEM_INFO" | awk '{print $2}')
USED_MEM=$(echo "$MEM_INFO" | awk '{print $3}')
FREE_MEM=$(echo "$MEM_INFO" | awk '{print $4}')
BUFF_CACHE=$(echo "$MEM_INFO" | awk '{print $6}')

# Calculate percentage
USED_PERCENT=$(free | grep Mem | awk '{printf "%.0f", $3/$2 * 100.0}')

echo "Total: $TOTAL_MEM | Used: $USED_MEM | Free: $FREE_MEM | Buff/Cache: $BUFF_CACHE"
echo "Usage: ${USED_PERCENT}%"
echo ""