# C++ System Monitor with CI/CD Pipeline

## Overview
This project is a lightweight Linux system monitoring tool written in C++. It reads system RAM metrics directly from the Linux `/proc` directory. 

More importantly, this project was built to demonstrate a complete, modern DevOps lifecycle, including version control, containerization, and continuous integration.

## DevOps Technologies Demonstrated
* **Containerization (Docker):** Packaged the C++ application alongside a customized Ubuntu environment and `g++` compiler to ensure consistent execution across any machine.
* **Continuous Integration (GitHub Actions):** Engineered an automated CI/CD pipeline (`ci.yml`) that triggers upon every push to the `main` branch, automatically building and validating the Docker image in the cloud.
* **Version Control (Git):** Managed source code, created `.gitignore` configurations to exclude compiled binaries, and handled secure authentication via Personal Access Tokens (PAT).
* **Linux Fundamentals:** Interacted directly with the Linux virtual filesystem (`/proc/meminfo`) and utilized Bash scripting for environment setup.

## How to Run Locally
If you have Docker installed, you can build and run this container using:
1. `docker build -t sysmon-app .`
2. `docker run sysmon-app`
