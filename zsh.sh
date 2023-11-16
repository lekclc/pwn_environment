#! /bin/sh
#先运行install.sh

yes|sudo apt install autojump
yes|git clone https://gitee.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
yes|git clone https://gitee.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
yes|sudo sed -i 's/plugins=(git)/plugins=(git extract autojump zsh-autosuggestions zsh-syntax-highlighting)/g' $HOME/.zshrc
yes|sudo ln ~/.zshrc /root/.zshrc
yes|sudo cp -r  ~/.oh-my-zsh /root/
yes|source $HOME/.zshrc
yes|echo "export PATH="$PATH:$HOME/.local/bin"" >> $HOME/.zshrc
yes|source $HOME/.zshrc
yes|./iot.sh

