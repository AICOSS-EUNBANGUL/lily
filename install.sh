#!/bin/bash

# Anaconda3 download URL
ANACONDA_URL="https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh"

# FILE name
INSTALLER_NAME="Anaconda3-2023.03-Linux-x86_64.sh"

# Download Path
DOWNLOAD_PATH="/tmp/$INSTALLER_NAME"

# Install Path
INSTALL_PATH = ""

# Checking wget is installed
if ! command -v wget &> /dev/null
then
    echo "wget 명령어 없음 설치해야함"
    sudo apt-get update -y
    sudo apt-get install wget -y
fi

# Download anaconda fetch scripts
echo "[아나콘다 스크립트 설치할려고함]"
wget $ANACONDA_URL

# 아나콘다 설치
echo "[아나콘다 설치 할려고함!]
