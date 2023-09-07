#! /bin/sh
#第一个运行
path=$HOME/Desktop/pwn_environment #修改为当前路径

mkdir $HOME/Desktop/pwntools #创建pwntools文件夹
#ubuntu 20.04
psths=$HOME/Desktop #当前路径
cd $HOME/Desktop/pwntools #进入pwntools文件夹
#----------------------配置
echo "export PATH=$HOME/.local/bin:$PATH" >> $HOME/.bashrc
source ~/.bashrc
#----------------------换源
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list && sudo apt update #更换源
sudo apt install python3-pip #安装pip
python3 -m pip install --upgrade pip #更新pip
mkdir ~/.pip #创建pip文件夹
touch ~/.pip/pip.conf #创建pip配置文件
echo "[global]" >> ~/.pip/pip.conf #写入配置
echo "index-url =  https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf #写入配置
sudo apt install ruby #安装ruby
sudo apt install gem #安装gem
gem sources  #列出默认源
gem sources --remove https://rubygems.org/  #移除默认源
gem sources -a https://mirrors.ustc.edu.cn/rubygems/  #添加科大源
gem sources -u  #更新源缓存
#----------------------pwntools
sudo apt-get update
sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools
cd $HOME/Desktop/pwntools
mkdir requirements.txt
echo "wheel==0.30.0" > requirements.txt
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
pip3 install --user -r requirements.txt
rm -rf requirements.txt
#----------------------
sudo apt install wget #安装wget
sudo apt install vim #安装vim
sudo apt install gcc #安装gcc
sudo apt-get -y install git gdb #安装git和gdb
#----------------------
sudo gem install one_gadget #安装one_gadget
sudo gem install seccomp-tools #安装seccomp-tools
sudo apt install checksec
sudo -H python3 -m pip install ROPgadget
sudo apt install patchelf
#----------------------
cd $HOME/Desktop/pwntools

#----------------------
cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git 
cp ~/Pwngdb/.gdbinit ~/
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd ~/
echo "#source ~/peda/peda.py" > ~/.gdbinit
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
cd $HOME/Desktop/pwntools
git clone https://github.com/lieanu/LibcSearcher.git
cd LibcSearcher
sudo python3 setup.py develop
cd $HOME/Desktop/pwntools
git clone https://github.com/matrix1001/glibc-all-in-one.git
#----------------------zsh
cd $HOME/Desktop/pwn_environment
sudo apt install zsh
chsh -s /bin/zshsh
chmod 775 install.sh
chmod 775 zsh.sh
bash install.sh
#----------------------