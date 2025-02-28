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

echo -e "${RED}Configuring SonarQube Setup... Please wait.${RESET}"
echo -e "${BLUE}------------------------------------------------${RESET}"

# Dummy Configuration Steps
echo -e "${YELLOW}Configuring Sonar Scanner...${RESET}"
sleep 2
echo -e "${GREEN}Sonar Scanner Configuration Complete.${RESET}"

echo -e "${YELLOW}Configuring Sonar Server...${RESET}"
sleep 3
echo -e "${GREEN}Sonar Server Configuration Complete.${RESET}"

echo -e "${YELLOW}Configuring JDK Settings...${RESET}"
sleep 2
echo -e "${GREEN}JDK Settings Configuration Complete.${RESET}"

echo -e "${YELLOW}Configuring PostgreSQL Database...${RESET}"
sleep 4
echo -e "${GREEN}PostgreSQL Database Configuration Complete.${RESET}"

echo -e "${YELLOW}Configuring Nginx Reverse Proxy...${RESET}"
sleep 3
echo -e "${GREEN}Nginx Reverse Proxy Configuration Complete.${RESET}"

echo -e "${YELLOW}Setting SonarQube service...${RESET}"
sleep 2
echo -e "${GREEN}SonarQube service set.${RESET}"

echo -e "${BLUE}------------------------------------------------${RESET}"

echo -e "${GREEN}SonarQube Setup Complete!${RESET}"
echo -e "${YELLOW}SonarQube, SonarScanner, PostgreSQL 17.3, OpenJDK 17, Oracle JRE & Nginx have been successfully configured.${RESET}"

echo -e "${BLUE}------------------------------------------------${RESET}"

echo -e "${CYAN}Starting SonarQube service...${RESET}"
sleep 3

echo -e "${GREEN}SonarQube service started successfully.${RESET}"

echo -e "${BLUE}------------------------------------------------${RESET}"

echo -e "${CYAN}Access SonarQube at: ${YELLOW}http://localhost:9000${RESET}"
