#!/usr/bin/env bash
# Neovim 配置与插件安装脚本
# 作者 Eddie Kao （由 qingfeng 修改为 Neovim 版本）

# backup_rand=$RANDOM	替换成 backup_rand=$(date +%s) 
backup_rand=$(date +%s)
nvim_folder="$HOME/.config"

# 先检查是否存在 ~/.config 文件夹
if [ -d "$HOME/.config" ]; then
  echo -e "\033[0;31m检测到已有 ~/.config 文件夹。\033[0;m"
  read -p "是否要先备份你的 .config 文件夹？ [y/n] " ans
  if [ "$ans" = "y" ]; then
    echo "正在备份原始 ~/.config 到 ~/.config-$(date +%Y%m%d)-$backup_rand"
    cp -r "$HOME/.config" "$HOME/.config-$(date +%Y%m%d)-$backup_rand"
    echo "已备份到 ~/.config-$(date +%Y%m%d)-$backup_rand"
  else
    echo "你已有 ~/.config，放弃备份。"
    exit 1
  fi
else
  echo "未检测到 ~/.config 文件夹，将直接下载配置。"
fi

# 检查 Git 是否安装
if command -v git >/dev/null 2>&1; then
  /usr/bin/env git clone https://github.com/qingfengpian/neovim_config_git.git "$nvim_folder"
else
  echo "抱歉，Git 尚未安装！"
  exit 1
fi

# 安装插件（确保 init.lua 已配置插件管理器）
nvim +'PlugInstall --sync' +qa

# 安装完成提示信息
echo ""
echo -e "\033[0;34m完成！Neovim 配置已成功安装。\033[0;m"
echo -e "\033[0;34mGithub 仓库: https://github.com/qingfengpian/neovim_config_git\033[0;m"
echo -e "\033[0;34m祝你使用愉快 :)\033[0;m"
echo ""

exit 0
