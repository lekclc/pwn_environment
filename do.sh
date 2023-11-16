#!/bin/bash
yes|echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
yes|sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list && sudo apt update #更换源
mkdir $HOME/pwntools #创建pwntools文件夹
mkdir $HOME/pwntools/gdb #创建gdb文件夹
yes|list && sudo apt update 
yes|sudo apt install git
yes|git clone https://github.com/lekclc/pwn_environment.git

cd pwn_environment

yes|chmod 775 pwn_ubuntu2004_vm.sh 
yes|chmod 775 install.sh 
yes|chmod 775 zsh.sh 

yes|bash pwn_ubuntu2004_vm.sh
