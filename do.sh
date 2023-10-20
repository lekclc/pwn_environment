#!/bin/bash
echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list && sudo apt update #更换源
mkdir $HOME/pwntools #创建pwntools文件夹
mkdir $HOME/pwntools/gdb #创建gdb文件夹
list && sudo apt update 
sudo apt install git
git clone https://github.com/lekclc/pwn_environment.git

cd pwn_environment

chmod 775 pwn_ubuntu2004_vm.sh 
chmod 775 install.sh 
chmod 775 zsh.sh 

bash pwn_ubuntu2004_vm.sh
