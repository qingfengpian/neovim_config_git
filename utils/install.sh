# my Neovim config and plugins installer
#
# created by Eddie Kao (modified for Neovim by qingfeng)

nvim_folder=~/.config/nvim
backup_rand=$RANDOM

# detect if there's a nvim folder
if [ -d $nvim_folder ]
then
  echo "\033[0;31mYou already have a nvim folder in ~/.config.\033[0;m"
  read -p "Would you like to backup your nvim folder first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $nvim_folder to $nvim_folder-$(date +%Y%m%d)-$backup_rand"
    mv $nvim_folder $nvim_folder-$(date +%Y%m%d)-$backup_rand
  else
    echo "You have a $nvim_folder now, please backup this first."
    exit
  fi
fi

# check if Git is installed					  
hash git >/dev/null && /usr/bin/env git clone https://github.com/qingfengpian/neovim_config_git.git ~/.config/nvim || {
  echo "Sorry, Git is not installed yet!"
  exit
}

# run PlugInstall to install all plugins
nvim +'PlugInstall --sync' +qa

echo ""
echo "\033[0;34mNice! Neovim config installed successfully.\033[0m"
echo "\033[0;34mGithub Repository: https://github.com/qingfengpian/neovim_config_git\033[0m"
echo "\033[0;34mPeace :)\033[0m"
echo ""

exit
