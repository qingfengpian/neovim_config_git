#!/usr/bin/env bash
# Neovim config and plugins installer
# created by Eddie Kao (modified for Neovim by qingfeng)

nvim_folder="$HOME/.config/nvim"
backup_rand=$RANDOM

# 检查是否已有 nvim 配置目录
if [ -d "$nvim_folder" ]; then
  echo -e "\033[0;31mYou already have a nvim folder in ~/.config.\033[0;m"
  read -p "Would you like to backup your nvim folder first? [y/n] " ans
  if [ "$ans" == "y" ]; then
    echo "backup your original $nvim_folder to $nvim_folder-$(date +%Y%m%d)-$backup_rand"
    mv "$nvim_folder" "$nvim_folder-$(date +%Y%m%d)-$backup_rand"
  else
    echo "You have a $nvim_folder now, please backup this first."
    exit 1
  fi
fi

# 检查 Git 是否安装
if command -v git >/dev/null 2>&1; then
  /usr/bin/env git clone https://github.com/qingfengpian/neovim_config_git.git "$nvim_folder"
else
  echo "Sorry, Git is not installed yet!"
  exit 1
fi

# 安装插件（确保 init.lua 已配置插件管理器）
nvim +'PlugInstall --sync' +qa

echo ""
echo -e "\033[0;34mNice! Neovim config installed successfully.\033[0;m"
echo -e "\033[0;34mGithub Repository: https://github.com/qingfengpian/neovim_config_git\033[0;m"
echo -e "\033[0;34mPeace :)\033[0;m"
echo ""

exit 0
