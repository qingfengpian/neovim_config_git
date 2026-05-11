

-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

--  ❄❄❄❄❄❄ NERDTree 插件配置 ❄❄❄❄❄❄

-- 设置 NERDTree 的目录切换模式为 2
vim.g.NERDTreeChdirMode = 2
-- 📌 可选值说明
-- 0 → 不自动切换目录。NERDTree 打开时不会影响 Vim 的工作目录。
-- 1 → 每次你在 NERDTree 中切换根节点时，自动把 Vim 的工作目录改成该根节点。
-- 2 → 每次你在 NERDTree 中打开一个文件时，自动把 Vim 的工作目录改成该文件所在的目录。
-- 3 → 在切换标签页时，自动把 Vim 的工作目录改成该标签页的 NERDTree 根目录。

-- <leader>n 聚焦到 NERDTree 窗口
vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>', { noremap = true, silent = true })

-- Ctrl+n 打开 NERDTree
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })

-- Ctrl+t 切换 NERDTree 显示/隐藏
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Ctrl+f 在 NERDTree 中定位当前文件
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- 在普通模式下按 F2 键，切换 NERDTree 文件树的显示/隐藏
-- noremap = true 表示非递归映射（等价于 nnoremap）
-- silent = true 表示执行时不在命令行显示命令
vim.keymap.set('n', '<F2>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.g.NERDTreeShowHidden = 0  --设置 NERDTree插件 默认显示隐藏文件 0不显示1显示
--在 nvim编辑器中可以使用大写i I来切换 是否显示隐藏文件

-- 在 Neovim 启动时自动打开 NERDTree
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "NERDTree"
})

-- 启用 NERDTree 的精简界面模式，隐藏多余的提示信息和装饰符号，让界面更简洁
vim.g.NERDTreeMinimalUI = 0   -- 0 是关闭 1 是启动

















