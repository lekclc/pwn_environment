#!/bin/bash
#ubuntu 20.04
cd $HOME/pwntools #进入pwntools文件夹
#----------------------配置
echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.bashrc && source $HOME/.bashrc
#----------------------换源
yes|sudo apt install python3-pip  #安装pip 
yes|ython3 -m pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple #更新pip
#----------------------pwntools
echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.bashrc && source $HOME/.bashrc
yes|sudo apt-get update #更新源
yes|sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential #安装依赖
yes|sudo pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
yes|pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

yes|python3 -m pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple #更新pip
yes|python3 -m pip install --upgrade pwntools -i https://pypi.mirrors.ustc.edu.cn/simple #安装pwntools

#----------------------
yes|sudo apt install wget #安装wget
yes|sudo apt install vim #安装vim
yes|sudo apt install gcc #安装gcc
yes|sudo apt install g++ #安装g++
yes|sudo apt install ruby #安装ruby
yes|sudo apt install gem #安装gem
yes|gem sources  #列出默认源
yes|gem sources --remove https://rubygems.org/  #移除默认源
yes|gem sources -a https://mirrors.ustc.edu.cn/rubygems/  #添加科大源
yes|gem sources -u  #更新源缓存
yes|sudo gem install one_gadget #安装one_gadget
yes|sudo apt-get install ruby-full  #安装ruby
yes|sudo apt-get install build-essential #安装build-essential
yes|sudo gem install seccomp-tools  #安装seccomp-tools
yes|sudo apt install checksec #安装checksec
yes|sudo -H python3 -m pip install ROPgadget -i https://pypi.mirrors.ustc.edu.cn/simple #安装ROPgadget
yes|sudo apt install patchelf #安装patchelf
#----------------------
cd $HOME/pwntools/gdb #进入gdb文件夹


git clone https://github.com/longld/peda.git
git clone https://github.com/scwuaptx/Pwngdb.git
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd $HOME/pwntools/gdb
cp $HOME/pwntools/gdb/Pwngdb/.gdbinit $HOME/.gdbinit
cd $HOME #进入根目录
echo "#source $HOME/pwntools/gdb/peda/peda.py" > $HOME/.gdbinit #写入配置
echo "source $HOME/pwntools/gdb/pwndbg/gdbinit.py " >> $HOME/.gdbinit #写入配置
echo "source $HOME/pwntools/gdb/Pwngdb/pwngdb.py" >> $HOME/.gdbinit
echo "source $HOME/pwntools/gdb/Pwngdb/angelheap/gdbinit.py" >> $HOME/.gdbinit

#----------------------
cd $HOME/pwntools #进入pwntools文件夹
git clone https://github.com/lieanu/LibcSearcher.git #下载LibcSearcher
cd LibcSearcher #进入LibcSearcher文件夹
yes|sudo python3 setup.py develop #安装LibcSearcher
cd $HOME/pwntools #进入pwntools文件夹
git clone https://github.com/matrix1001/glibc-all-in-one.git #下载glibc-all-in-one
#----------------------
#arm环境搭建
yes|sudo apt-get install qemu
yes|sudo apt-get install qemu-system qemu-user-static binfmt-support
yes|sudo apt-get install -y gcc-arm-linux-gnueabi
yes|sudo apt-get install qemu libncurses5-dev gcc-arm-linux-gnueabi 
yes|sudo apt-get install build-essential synaptic gcc-aarch64-linux-gnu 
yes|sudo apt-get install gdb-multiarch

#----------------------zsh
cd $HOME/Desktop/pwn_environment #进入pwn_environment文件夹
#cd $HOME/pwn_environment
yes|sudo apt install zsh #安装zsh
yes|chsh -s /usr/bin/zsh  #修改默认shell
bash install.sh
#----------------------
