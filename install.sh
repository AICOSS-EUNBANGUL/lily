#!/bin/bash

# Anaconda3 download URL
ANACONDA_URL="https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh"
# FILE name
INSTALLER_NAME="Anaconda3-2023.03-Linux-x86_64.sh"
# Download Path
INSTALL_PATH="/raid/coss36/anaconda3"

# Checking wget is installed
if ! command -v wget &> /dev/null
then
    echo "wget 명령어 없음 설치해야함"
    sudo apt-get update -y
    sudo apt-get install wget -y
fi

# 1. 아나콘다 설치 스크립트 다운로드
echo "[아나콘다 설치 스크립트 다운로드]"
wget $ANACONDA_URL

# 2. 아나콘다 스크립트 권한 부여
echo "[아나콘다 설치 스크립트 실행 권한 부여]"
chmod +x $INSTALLER_NAME

# 3. 아나콘다 설치
echo "[아나콘다 설치]"
./$INSTALLER_NAME -b -p $INSTALL_PATH

# 4. 설치 스크립트 삭제
echo "[아나콘다 스크립트 삭제]"
rm $INSTALLER_NAME

echo "[아나콘다 설치 완료!]"