#! /bin/sh

#ubuntu 20.04
psth=$(pwd)
mkdir pwntools
cd ${path}/pwntools

sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
sudo apt update
sudo apt install python3-pip
mkdir ~/.pip
touch ~/.pip/pip.conf
echo "[global]" >> ~/.pip/pip.conf
echo "index-url =  https://mirrors.ustc.edu.cn/pypi/web/simple" >> ~/.pip/pip.conf
python3 -m pip install --upgrade pip

#sudo dpkg --add-architecture i386
#sudo apt-get update
#sudo apt-get -y install libc6-i386
#apt install libc6-dbg
#apt install libc6-dbg:i386
#apt source libc6-dev
sudo apt install vim
sudo apt-get -y install git gdb
sudo apt -y install ruby
sudo gem install one_gadget
sudo -H python3 -m pip install ROPgadget
git clone https://github.com/scwuaptx/Pwngdb.git ${path}/pwntools/gdb/pwngdb
cp ${path}/pwntools/gdb/pwngdb/.gdbinit  ${path}/
git clone https://github.com/pwndbg/pwndbg ${path}/pwntools/gdb/pwndbg
.${path}/pwntools/gdb/pwndbg/setup.sh
echo "source ${path}/pwntools/gdb/pwndbg/gdbinit.py" >> ~/.gdbinit
echo "source ${path}/pwntools/gdb/pwngdb.py" >> ~/.gdbinit
echo "source ${path}/pwntools/gdb/pwngdb/angelheap/gdbinit.py" >> ~/.gdbinit
echo "define hook-run" >> ~/.gdbinit
echo "python3" >> ~/.gdbinit
echo "import angelheap" >> ~/.gdbinit
echo "angelheap.init_angelheap()" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
echo "end" >> ~/.gdbinit
git clone https://github.com/lieanu/LibcSearcher.git ${path}/pwntools/LibcSearcher
python3 .${path}/pwntools/LibcSearcher/setup.py develop
sudo apt-get update
sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade pwntools
git clone https://github.com/matrix1001/glibc-all-in-one.git
sudo apt install patchelf
cd ~
sudo apt install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${path}/.oh-my-zsh}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${path}/.oh-my-zsh}/plugins/zsh-syntax-highlighting
echo "配置.zshrc文件"
echo "plugins=(git zsh-syntax-highlighting zsh-autosuggestions)"
echo "sudo ln ./.zshrc /root/.zshrc"