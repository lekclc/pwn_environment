#!/bin/bash
echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list && sudo apt update #更换源
mkdir $HOME/Desktop/pwntools #创建pwntools文件夹
mkdir $HOME/Desktop/pwntools/gdb #创建gdb文件夹
list && sudo apt update 
sudo apt install git
git clone https://github.com/lekclc/pwn_environment.git

cd pwn_environment

chmod 775 pwn_ubuntu2004_vm.sh #修改权限
chmod 775 install.sh #修改权限
chmod 775 zsh.sh #修改权限

bash pwn_ubuntu2004_vm.sh
