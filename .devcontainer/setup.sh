#!/bin/bash

# 创建并进入工作目录
mkdir -p /home/vscode/android-sdk/cmdline-tools
cd /home/vscode/android-sdk

# 下载并规范化命令行工具目录
wget -q https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip
unzip -q commandlinetools-linux-*_latest.zip -d cmdline-tools
mv cmdline-tools/cmdline-tools cmdline-tools/latest
rm commandlinetools-linux-*_latest.zip

# 自动同意授权并安装 SgtPuzzles 需要的具体组件
yes | /home/vscode/android-sdk/cmdline-tools/latest/bin/sdkmanager --licenses
/home/vscode/android-sdk/cmdline-tools/latest/bin/sdkmanager "platforms;android-33" "build-tools;33.0.2" "ndk;25.1.8937393" "cmake;3.22.1" "platform-tools"
