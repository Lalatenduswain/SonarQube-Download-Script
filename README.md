# SonarQube Fake Download Script

![Fake Download](https://img.shields.io/badge/Fake%20Download-Fun-blue)

This is a **fun** script that simulates the download and installation of SonarQube, SonarScanner, PostgreSQL, OpenJDK, Oracle JRE, and Nginx. The script displays a progress bar with random speeds to make it look like an actual download process.

## 🚀 How It Works
The script:
- Detects your operating system.
- Displays a message saying that SonarQube and other dependencies are being downloaded.
- Shows a progress bar that updates from 1% to 100%.
- Randomly simulates download speeds between **500KB/s and 1500KB/s**.
- Pretends that everything is successfully installed at the end.

⚠️ **Note:** This script does **NOT** actually download or install any software. It's purely for entertainment purposes!

## 📜 Usage
Clone this repository or download the script directly:
```bash
curl -sSL https://raw.githubusercontent.com/Lalatenduswain/SonarQube-Download-Script/refs/heads/master/SonarQube.sh | bash
```
Or, manually run it after downloading:
```bash
chmod +x SonarQube.sh
./SonarQube.sh
```

## 🖥️ Example Output
```
Operating System Detected: Ubuntu 24.04
------------------------------------------------
Downloading SonarQube... Please wait.
------------------------------------------------
Downloading:
- SonarQube 25.2.0.102705
- SonarScanner
- PostgreSQL 17.3
- OpenJDK 17
- Oracle JRE
- Nginx
------------------------------------------------
[ ####################                      ] 50% [1023 KB/s]
[ ######################################## ] 100% [1342 KB/s]
Download Complete! SonarQube, SonarScanner, PostgreSQL 17.3, OpenJDK 17, Oracle JRE & Nginx have been installed successfully.
```

## 🤣 Why Use This?
- Trick your friends into thinking you're installing something serious.
- Use it as a fun prank.
- Just for some geeky entertainment!

## 📜 License
This script is open-source and provided for fun. Feel free to modify and share it!

---
🎉 **Enjoy this fake installer and have fun!**
