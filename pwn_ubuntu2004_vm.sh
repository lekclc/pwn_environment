#!/bin/bash
#ubuntu 20.04
cd $HOME/pwntools #进入pwntools文件夹
#----------------------配置
echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.bashrc && source $HOME/.bashrc
#----------------------换源
sudo apt install python3-pip  #安装pip 
python3 -m pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple #更新pip
#----------------------pwntools
echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.bashrc && source $HOME/.bashrc
sudo apt-get update #更新源
sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential #安装依赖
sudo pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

python3 -m pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple #更新pip
python3 -m pip install --upgrade pwntools -i https://pypi.mirrors.ustc.edu.cn/simple #安装pwntools
cd $HOME/pwntools #进入pwntools文件夹
touch requirements.txt #创建requirements.txt文件
echo "wheel==0.30.0" > requirements.txt #写入配置
echo "docutils" >> requirements.txt 
echo "breathe==4.7.3" >> requirements.txt
echo "sphinx" >> requirements.txt
echo "docutils==0.14" >> requirements.txt
echo "sphinx_rtd_theme" >> requirements.txt
echo "junit2html" >> requirements.txt
echo "PyYAML==3.12" >> requirements.txt
echo "ply==3.10" >> requirements.txt
echo "gitlint" >> requirements.txt
echo "pyelftools==0.24" >> requirements.txt
echo "pyserial" >> requirements.txt
echo "pykwalify" >> requirements.txt
pip3 install --user -r requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple #安装依赖
#----------------------
sudo apt install wget #安装wget
sudo apt install vim #安装vim
sudo apt install gcc #安装gcc
sudo apt install g++ #安装g++
sudo apt install ruby #安装ruby
sudo apt install gem #安装gem
gem sources  #列出默认源
gem sources --remove https://rubygems.org/  #移除默认源
gem sources -a https://mirrors.ustc.edu.cn/rubygems/  #添加科大源
gem sources -u  #更新源缓存
sudo gem install one_gadget #安装one_gadget
sudo apt-get install ruby-full  #安装ruby
sudo apt-get install build-essential #安装build-essential
sudo gem install seccomp-tools  #安装seccomp-tools
sudo apt install checksec #安装checksec
sudo -H python3 -m pip install ROPgadget -i https://pypi.mirrors.ustc.edu.cn/simple #安装ROPgadget
sudo apt install patchelf #安装patchelf
#----------------------
cd $HOME/pwntools/gdb #进入gdb文件夹


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
sudo python3 setup.py develop #安装LibcSearcher
cd $HOME/pwntools #进入pwntools文件夹
git clone https://github.com/matrix1001/glibc-all-in-one.git #下载glibc-all-in-one
#----------------------zsh
cd $HOME/pwn_environment #进入pwn_environment文件夹
sudo apt install zsh #安装zsh
chsh -s /bin/zshsh  #修改默认shell
bash install.sh
#----------------------