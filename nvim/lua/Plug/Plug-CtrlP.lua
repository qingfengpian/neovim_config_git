

-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

-- ❄❄❄❄❄❄ CtrlP 插件配置 ❄❄❄❄❄❄

-- 这不是CtrlP 本身的配置而是 只是用于把CtrlP插件 默认搜索grep 替换成ag
-- grep 是 Linux/Unix 系统里最常用的文本搜索工具
-- ag 指的是 The Silver Searcher，它是一个在 Linux/Unix 系统上非常流行的文本搜索工具 需要安装
-- The Silver Searcher
-- vim.fn.executable('ag') == 1 这行代码会检查系统里是否安装了 The Silver Searcher (ag)。
-- 如果返回值是 1，说明可执行文件存在，就会进入配置块。
if vim.fn.executable('ag') == 1 then
  -- 使用 ag 替代 grep
  vim.opt.grepprg = "ag --nogroup --nocolor"

  -- 在 CtrlP 中使用 ag 来列出文件。速度极快，并且会遵守 .gitignore
  vim.g.ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  -- 因为 ag 足够快，所以 CtrlP 不需要缓存
  vim.g.ctrlp_use_caching = 0
end

--[[
" The Silver Searcher   这是.vimrc 配置版
if executable('ag')
  " 使用 ag 替代 grep
  set grepprg=ag\ --nogroup\ --nocolor

  " 在 CtrlP 中使用 ag 来列出文件。速度极快，并且会遵守 .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " 因为 ag 足够快，所以 CtrlP 不需要缓存
  let g:ctrlp_use_caching = 0
endif
]]





