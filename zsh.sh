#! /bin/sh
#先运行install.sh
sudo apt install autojump
git clone https://gitee.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
 git clone https://gitee.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo sed -i 's/plugins=(git)/plugins=(git extract autojump zsh-autosuggestions zsh-syntax-highlighting)/g' $HOME/.zshrc
source ~/.zshrc
echo "export PATH="$PATH:$HOME/.local/bin"" >> .zshrc
source ~/.zshrc

