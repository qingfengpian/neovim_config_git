

-- ❄❄❄❄❄❄ Neovim 的Lua设置 vim-plug配置 ❄❄❄❄❄❄、
-- 这是原始写法【Lua封装】这种写法是 Lua 调用 Vimscript 函数，更贴近 Lua 风格

local Plug = vim.fn['plug#']  -- vim-plug配置起始位 也称为定义Plug函数
vim.call('plug#begin')

-- vim-airline 是 Vim 的轻量级状态栏/标签栏
Plug('vim-airline/vim-airline')

--vim-airline-themes 是扩展主题
Plug('vim-airline/vim-airline-themes')

-- Vim 编辑器的文件系统浏览器插件
Plug('preservim/nerdtree')

-- ctrlp.vim插件是 Vim 生态里非常经典的模糊搜索插件
Plug('ctrlpvim/ctrlp.vim')

-- tpope/vim-surround 是 Vim 社区里非常著名的插件，
-- 用来快速操作“环绕符号”，比如括号、引号、HTML/XML 标签等。
-- 它让你能轻松地添加、删除或替换这些成对的符号，大幅提高编辑效率。
Plug('tpope/vim-surround')






vim.call('plug#end')  -- vim-plug配置结束位

-- ❄❄❄❄❄❄ Neovim 的Lua设置 vim-plug配置 结束❄❄❄❄❄❄





-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

-- 在这里保留这种写法的原因是还又这种写法 只是为了提醒
--[[
-- 📌 转换写法（Vimscript 块）
-- 这种写法是 在 Lua 文件里嵌入 Vimscript，直接把原来的 Vimscript 插件列表搬过来
-- lua/plugins.lua
vim.cmd [[

  call plug#begin('~/.local/share/nvim/plugged')

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-surround'

  call plug#end()

]]




















