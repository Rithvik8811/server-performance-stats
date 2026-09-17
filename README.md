# Server Performance Stats

A lightweight Bash script that analyzes basic server performance statistics on a Linux system.

The script provides information about CPU usage, memory usage, disk usage, and the processes consuming the most CPU and memory.

## Features

The script reports:

- Total CPU usage
- Total memory usage
  - Total memory
  - Used memory
  - Free memory
  - Memory usage percentage
- Total disk usage
  - Total disk space
  - Used disk space
  - Free disk space
  - Disk usage percentage
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

### Additional System Information

The script also provides:

- Operating system version
- System uptime
- Load average
- Number of logged-in users

## Requirements

The script is designed to run on Linux systems.

### Prerequisites

- Linux operating system
- Bash shell
- Standard Linux utilities such as:
  - `top`
  - `free`
  - `df`
  - `ps`
  - `awk`
  - `grep`
  - `uptime`
  - `who`

No additional software or packages are required.

## Installation

Clone the repository:

```bash
git clone https://github.com/Rithvik8811/server-performance-stats.git
```

Navigate to the project directory:

```bash
cd server-performance-stats
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

## Usage

Run the script using:

```bash
./server-stats.sh
```

Alternatively:

```bash
bash server-stats.sh
```

## Example Output

```text
==========================================
       SERVER PERFORMANCE STATISTICS
==========================================

CPU Usage
------------------------------------------
Total CPU Usage: 12.40%

Memory Usage
------------------------------------------
Total: 7.7Gi
Used: 2.1Gi
Free: 3.4Gi
Memory Usage: 27.27%

Disk Usage
------------------------------------------
Total: 100G
Used: 35G
Free: 65G
Usage: 35%

Top 5 Processes by CPU Usage
------------------------------------------
PID      PPID     CMD                  %MEM    %CPU
1234     1        java                 5.2     15.4
5678     1        docker               2.1      8.7
...

Top 5 Processes by Memory Usage
------------------------------------------
PID      PPID     CMD                  %MEM    %CPU
1234     1        java                 5.2     15.4
9012     1        mysql                4.1      3.2
...

System Information
------------------------------------------
OS:
Ubuntu 24.04.1 LTS

Uptime:
up 2 hours, 34 minutes

Load Average:
0.42, 0.38, 0.31

Logged-in Users:
1
```

## How It Works

The script uses standard Linux commands to collect system performance information.

| Command | Purpose |
|---------|---------|
| `top` | Collect CPU usage |
| `free` | Collect memory statistics |
| `df` | Collect disk usage |
| `ps` | List and sort running processes |
| `awk` | Process and calculate values |
| `grep` | Extract system information |
| `uptime` | Display uptime and load average |
| `who` | Count logged-in users |

## Project Structure

```text
server-performance-stats/
│
├── server-stats.sh
└── README.md
```

## Project Goals

This project was created to practice:

- Linux system administration
- Bash scripting
- Linux process management
- System resource monitoring
- Command-line utilities
- DevOps fundamentals

## Future Improvements

Possible future improvements include:

- CPU and memory usage warning thresholds
- Disk space alerts
- Logging statistics to a file
- Command-line arguments
- HTML report generation
- Automated monitoring
- Integration with monitoring tools
- Email or notification alerts

## Project Page

GitHub Repository:

https://github.com/Rithvik8811/server-performance-stats

## License

This project is open source and available for learning and educational purposes.
