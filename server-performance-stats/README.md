# Server Performance Stats

A simple yet powerful Bash script to analyze and display key server performance metrics on any Linux system. Built as part of the [roadmap.sh](https://roadmap.sh/) DevOps / System Administrator learning path.

## Goal

Create a script that helps system administrators and DevOps engineers quickly understand the current health and resource utilization of a Linux server.

## Features

### Core Requirements
- **Total CPU Usage** – Current CPU utilization percentage
- **Memory Usage** – Total, used, free, and usage percentage
- **Disk Usage** – Total, used, free, and usage percentage for all mounted filesystems
- **Top 5 Processes by CPU** – Sorted list of the most CPU-intensive processes
- **Top 5 Processes by Memory** – Sorted list of the most memory-intensive processes

### Stretch Goals (Included)
- Operating System version and kernel
- System uptime
- Load average (1, 5, 15 minutes)
- Number of logged-in users
- Failed login attempts (from auth logs)
- Network interfaces and IP addresses
- Recent system logs summary

## Prerequisites

- Linux-based system (tested on Ubuntu, Debian, CentOS, RHEL, Fedora, etc.)
- Bash shell
- Standard tools: `free`, `df`, `ps`, `top`, `uname`, `uptime`, `who`, `journalctl` (or `lastb`)

## Installation & Usage

### 1. Clone or Download

```bash
git clone https://github.com/M-b-a-s/server-performance-stats.git
cd server-performance-stats
```

### 2. Make the script executable
```bash
chmod +x server-stats.sh
```

### 3. Run the script
```bash
./server-stats.sh
```

## How It Works
The script leverages standard Linux utilities:
- top / ps for process information
- free for memory stats
- df for disk usage
- /proc/loadavg and uptime for load and system info
- journalctl / lastb for security insights

## Project Structure
server-performance-stats/
├── server-stats.sh          # Main script
├── README.md                # This file
└── LICENSE                  # (Optional)

## Learning Outcomes
By completing this project, you will gain practical experience with:

- Linux performance monitoring tools
- Bash scripting best practices
- System administration fundamentals
- Resource utilization analysis
- Troubleshooting server performance issues