

-- ❄❄❄❄❄❄ Neovim 配置 ❄❄❄❄❄❄

-- 基础设置

vim.o.number = true -- 显示行号

vim.o.tabstop = 4   -- Tab 显示为 4 个空格

vim.o.scrolloff = 7 -- 上下安全区控制滚动 当光标靠近窗口顶部或底部时，至少保留多少行可见内容

--vim.o.sidescrolloff = 7   -- 左右安全区

vim.o.scrolljump = 1    -- 每次滚动时的最小行数 屏幕滚动时至少跳 1 行

vim.o.scroll = 10   -- 定义 Ctrl-d / Ctrl-u 半屏滚动时的行数。默认是半屏，可以改成固定行数。

vim.o.shiftwidth = 4    -- 自动缩进宽度

vim.o.expandtab = false -- 用空格代替 Tab

vim.o.showtabline = 2   -- 总是显示 tabline

vim.o.hlsearch = true	--开启搜索结果高亮

vim.cmd("syntax on")  -- 启用语法高亮

vim.opt.termguicolors = true	-- 启用真彩色支持（24-bit colors）

vim.o.wrap = true   -- 开启自动换行

vim.o.linebreak = true  -- 在单词边界换行，而不是硬切断

vim.o.breakindent = true    -- 换行后保持缩进对齐

vim.o.breakindentopt = "shift:2"    -- 设置折行缩进的额外空格（可选）shift:2 表示额外缩进两个空格





-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

vim.cmd("colorscheme desert") -- 配色方案
--[[
Neovim 内置配色方案全集

配色方案	说明
default	  默认主题，基础色彩
blue	    蓝色调，深色背景
darkblue	深蓝色背景
delek	    浅色背景，柔和色彩
desert	  沙漠风格，暖色调
elflord	  深色背景，亮色关键字
evening	  暮色风格，深色背景
industry	工业灰色调
koehler	  深色背景，亮色对比
morning	  浅色背景，适合白天
murphy	  深色背景，绿色调
pablo	    深色背景，柔和色彩
peachpuff	浅色柔和风格
ron	      深色背景，简洁风格
shine	    明亮风格，浅色背景
slate	    深色背景，冷色调
torte	    深色背景，棕色调
zellner	  简洁风格，浅色背景

👉 如果你想要更漂亮的高亮效果，可以安装第三方主题，比如：
gruvbox，tokyonight，dracula，onedark
安装后在配置里设置：colorscheme gruvbox=
]]





-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

vim.api.nvim_command('filetype on') -- 启用文件类型检测，即根据文件扩展名或内容来设置 filetype

--vim.cmd.filetype('on')  --这是 Lua 封装的命令调用，
--效果和vim.api.nvim_command('filetype on')完全一样：启用 文件类型检测

vim.cmd.filetype('plugin on')
--这不仅启用文件类型检测，还会加载与该文件类型相关的 插件脚本（位于 ftplugin/ 目录）。
--常用于让不同文件类型有专属的配置，比如 python.vim、lua.vim。
--ftplugin目录中的配置会根据所编辑的文件类型自动触发对应的配置文件

vim.cmd.filetype('indent on')
--启用 缩进脚本（位于 indent/ 目录）
--不同文件类型会有不同的缩进规则，比如 Python 的缩进和 Lua 的缩进方式不同。
--vim.cmd.filetype('plugin indent on')  也可以组合同时启用 或者关闭off

vim.cmd("filetype plugin indent on")    --自动检测文件类型
--一次性启用文件类型检测 + 插件脚本 + 缩进脚本。最完整的组合
--这是推荐的写法 效果相同
--vim.cmd([[
--    filetype plugin indent on
--]])

-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄





--在 Neovim 中允许透明背景
-- init.lua 写法
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
--[[
具体说明
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
修改高亮组 Normal（普通文本区域）的背景颜色。
guibg=NONE → 在 GUI/真彩色模式下不设置背景色（透明）。
ctermbg=NONE → 在终端 256 色模式下不设置背景色。
效果：编辑区背景透明，显示终端本身的背景。
vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
修改高亮组 NonText（非文本字符，比如 ~ 表示空行的符号）的背景颜色。
同样设置为透明。
效果：这些符号不会有额外的背景色，看起来更干净。
 
透明背景：如果你在终端里用了透明背景或壁纸，这样设置可以让 Neovim 不覆盖背景。
美化主题：有些配色方案默认给 Normal 或 NonText 加了背景色，可能和你的终端主题冲突，用这种方式可以去掉
]]

-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄





-- 移除背景色，让终端透明效果透出
vim.cmd [[
  highlight Normal guibg=none ctermbg=none
  highlight NormalNC guibg=none ctermbg=none
  highlight SignColumn guibg=none ctermbg=none
  highlight LineNr guibg=none ctermbg=none
  highlight EndOfBuffer guibg=none ctermbg=none
]]

--[[
Normal
控制编辑区普通文本的显示。
guibg=none → 在 GUI/真彩色模式下不设置背景色（透明）。
ctermbg=none → 在终端 256 色模式下不设置背景色。
效果：编辑区背景透明，显示终端背景。

NormalNC
控制 非当前窗口 的普通文本显示。
设置为透明后，非活动窗口也不会有背景色。

SignColumn
显示诊断符号（如 LSP 错误、警告标记）、Git 标记等的列。
设置为透明后，标记列背景不会和编辑区不同，看起来更统一。

LineNr
控制行号的显示。
设置为透明后，行号背景和编辑区一致，不会有额外的色块。

EndOfBuffer
控制文件末尾的 ~ 符号显示。
设置为透明后，这些符号不会有背景色，看起来更干净。
]]

-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄




















