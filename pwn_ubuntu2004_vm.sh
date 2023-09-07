#!/bin/bash
#第一个运行
path=$HOME/Desktop/pwn_environment #修改为当前路径

mkdir $HOME/Desktop/pwntools #创建pwntools文件夹
#ubuntu 20.04
psths=$HOME/Desktop #当前路径
cd $HOME/Desktop/pwntools #进入pwntools文件夹
#----------------------配置
echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
#----------------------换源
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list && sudo apt update #更换源
sudo apt install python3-pip  #安装pip 
python3 -m pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple #更新pip
mkdir ~/.pip #创建pip文件夹
touch ~/.pip/pip.conf #创建pip配置文件
echo "[global]" >> ~/.pip/pip.conf #写入配置
echo "index-url =  https://pypi.mirrors.ustc.edu.cn/simple" >> ~/.pip/pip.conf #写入配置
sudo apt install ruby #安装ruby
sudo apt install gem #安装gem
gem sources  #列出默认源
gem sources --remove https://rubygems.org/  #移除默认源
gem sources -a https://mirrors.ustc.edu.cn/rubygems/  #添加科大源
gem sources -u  #更新源缓存
#----------------------pwntools
echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
sudo apt-get update #更新源
sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential #安装依赖
python3 -m pip install --upgrade pip -i https://pypi.mirrors.ustc.edu.cn/simple #更新pip
python3 -m pip install --upgrade pwntools -i https://pypi.mirrors.ustc.edu.cn/simple #安装pwntools
cd $HOME/Desktop/pwntools #进入pwntools文件夹
mkdir requirements.txt #创建requirements.txt文件
echo "wheel==0.30.0" > requirements.txt #写入配置
echo "docutils" >> requirements.txt 
echo "breathe==4.7.3" >> requirements.txt
echo "sphinx>1.8" >> requirements.txt
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
sudo apt-get -y install gdb #安装gdb
#----------------------
sudo gem install one_gadget #安装one_gadget
sudo gem install seccomp-tools #安装seccomp-tools
sudo apt install checksec #安装checksec
sudo -H python3 -m pip install ROPgadget #安装ROPgadget
sudo apt install patchelf #安装patchelf
#----------------------
cd ~/ #进入根目录
git clone https://github.com/scwuaptx/Pwngdb.git  #下载Pwngdb
cp ~/Pwngdb/.gdbinit ~/ #复制.gdbinit文件到根目录
git clone https://github.com/pwndbg/pwndbg #下载pwndbg
cd pwndbg #进入pwndbg文件夹
./setup.sh #安装pwndbg
cd ~/ #进入根目录
echo "#source ~/peda/peda.py" > ~/.gdbinit #写入配置
echo "source ~/pwndbg/gdbinit.py" >> ~/.gdbinit
echo "source ~/Pwngdb/pwngdb.py" >> ~/.gdbinit
echo "source ~/Pwngdb/angelheap/gdbinit.py" >> ~/.gdbinit
echo "define hook-run" >> ~/.gdbinit
echo "python" >> ~/.gdbinit
echo "import angelheap" >> ~/.gdbinit
echo "angelheap.init_angelheap()" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
echo "~" >> ~/.gdbinit
#----------------------
cd $HOME/Desktop/pwntools #进入pwntools文件夹
git clone https://github.com/lieanu/LibcSearcher.git #下载LibcSearcher
cd LibcSearcher #进入LibcSearcher文件夹
sudo python3 setup.py develop #安装LibcSearcher
cd $HOME/Desktop/pwntools #进入pwntools文件夹
git clone https://github.com/matrix1001/glibc-all-in-one.git #下载glibc-all-in-one
#----------------------zsh
cd $HOME/Desktop/pwn_environment #进入pwn_environment文件夹
sudo apt install zsh #安装zsh
chsh -s /bin/zshsh  #修改默认shell
chmod 775 install.sh #修改权限
chmod 775 zsh.sh #修改权限
bash install.sh #运行install.sh
#----------------------