

--[[

keymap 按键映射函数 使用方法

keymap 语法:
vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

mode → 模式，可以是 'n' (Normal)、'i' (Insert)、'v' (Visual)、'x' (Visual block)、
't' (Terminal)、'c' (Command-line)，也可以是一个数组 {'n','v'}。
lhs → 原始按键（left-hand side）。
rhs → 映射后的动作（right-hand side）。
opts → 可选参数表，常用的有：
noremap = true → 非递归映射，相当于 nnoremap。
silent = true → 执行时不回显命令。
expr = true → rhs 作为表达式求值。
buffer = true → 仅在当前 buffer 生效。

]]

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
-- 在插入模式下，快速输入 jj 会退出到普通模式
-- 'i' 表示插入模式 (Insert mode)
-- 'jj' 是触发按键序列
-- '<Esc>' 是映射后的动作，相当于按下 Esc 键
-- { noremap = true } 表示非递归映射，避免再次触发其他映射



-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

-- <leader> 的快捷键映射

-- 保存文件
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- 退出文件
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })

-- 局部 Leader 示例：逗号 + t
-- 在普通模式下，按逗号 t 会打开一个新标签页
vim.keymap.set('n', '<localleader>t', ':tabnew<CR>', { noremap = true, silent = true })





















