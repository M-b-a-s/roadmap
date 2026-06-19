#!/bin/bash

# ###################
# 
# Author: M-b-a-s
#
# Title: Server Performance Stats
# Date: June 19, 2026
#
#
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