#!/bin/bash

# Define color codes
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
CYAN='\e[36m'
RESET='\e[0m'

# Detecting Operating System
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS_NAME="$NAME"
    OS_VERSION="$VERSION"
elif type lsb_release >/dev/null 2>&1; then
    OS_NAME=$(lsb_release -si)
    OS_VERSION=$(lsb_release -sr)
elif [ -f /etc/debian_version ]; then
    OS_NAME="Debian"
    OS_VERSION=$(cat /etc/debian_version)
elif [ -f /etc/redhat-release ]; then
    OS_NAME=$(cat /etc/redhat-release)
else
    OS_NAME=$(uname -s)
    OS_VERSION=$(uname -r)
fi

echo -e "${CYAN}Operating System Detected: ${YELLOW}$OS_NAME $OS_VERSION${RESET}"
echo -e "${BLUE}------------------------------------------------${RESET}"

echo -e "${RED}Downloading SonarQube... Please wait.${RESET}"
echo -e "${BLUE}------------------------------------------------${RESET}"

echo -e "${YELLOW}Downloading:${RESET}"
echo -e "${CYAN}- SonarQube 25.2.0.102705${RESET}"
echo -e "${CYAN}- SonarScanner${RESET}"
echo -e "${CYAN}- PostgreSQL 17.3${RESET}"
echo -e "${CYAN}- OpenJDK 17${RESET}"
echo -e "${CYAN}- Oracle JRE${RESET}"
echo -e "${CYAN}- Nginx${RESET}"
echo -e "${BLUE}------------------------------------------------${RESET}"

duration=30  # Total time for the fake download (in seconds)
increment=$(echo "scale=2; $duration / 100" | bc)  # Time per percentage increment

start_time=$(date +%s)
for i in {1..100}; do
    speed=$(( (RANDOM % 1000) + 500 ))  # Random speed between 500KB/s and 1500KB/s
    echo -ne "\r${GREEN}[ $(printf '%-50s' $(printf '#%.0s' $(seq 1 $((i/2))))) ] $i% [$speed KB/s]${RESET}"
    sleep $increment
    elapsed_time=$(( $(date +%s) - start_time ))
    if [ "$i" -eq 100 ]; then
        break
    fi
done

echo -e "\n${GREEN}Download Complete!${RESET} ${YELLOW}SonarQube, SonarScanner, PostgreSQL 17.3, OpenJDK 17, Oracle JRE & Nginx have been installed successfully.${RESET}"
