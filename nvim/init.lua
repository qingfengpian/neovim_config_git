

--[[

设置 Leader 键
默认情况下，Leader 的键位是 \

mapleader → 全局 Leader 键
maplocalleader → 局部 Leader 键（通常用于插件或特定 buffer）


]]

vim.g.mapleader = " "       -- 设置全局 Leader 键为空格
vim.g.maplocalleader = ","  -- 设置局部 Leader 键为逗号


-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

-- Nvim 基本配置
require("settings")

-- 自定义的功能 配置
require("customization")

-- keymap 按键映射函数
require("keymaps")  





-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

-- 定义插件配置
require("Plug.plugins")  -- 要添加插件就到 plugins中添加

--airline 插件用来美化和增强状态栏与标签栏。它提供文件信息、模式、编码、Git 分支等丰富内容，同时保持极快的加载速度
-- Plug-airline 插件配置
require("Plug.Plug-airline")

--NERDTree 插件它的作用是提供一个 文件目录系统浏览器
-- Plug-NERDTree 插件配置
require("Plug.Plug-NERDTree")

--CtrlP 插件它提供了 模糊文件查找器
-- Plug-CtrlP 插件配置
require("Plug.Plug-CtrlP")






-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

























