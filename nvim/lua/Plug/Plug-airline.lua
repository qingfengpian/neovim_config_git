

-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄

-- ❄❄❄❄❄❄ vim-airline插件配置 ❄❄❄❄❄❄

-- 启用 vim-airline插件的 tabline 扩展
vim.g['airline#extensions#tabline#enabled'] = 1

-- 设置vim-airline插件顶部标签栏（Tabline）的文件名显示格式 default 是默认值
vim.g['airline#extensions#tabline#formatter'] = 'default'

-- 这是 vim-airline 插件的一个选项，用来启用 Powerline 字体支持
-- 值为 1 → 表示启用。这样状态栏和标签栏会显示更漂亮的箭头、分隔符等特殊符号。
-- 值为 0 → 表示禁用，使用普通 ASCII 字符作为分隔符。
vim.g.airline_powerline_fonts = 1

-- vim-airline 插件主题切换
vim.g.airline_theme = 'dark'
-- 主题插件 vim-airline-themes 主题在如下位置
-- ~\.local\share\nvim\plugged\vim-airline-themes\autoload\airline\themes

-- 自定义状态栏分区
vim.g.airline_section_a = '%{mode(1)}'          -- 模式
vim.g.airline_section_b = '%{airline#extensions#branch#get_head()}' -- Git 分支
vim.g.airline_section_c = '%f %m'               -- 文件名+修改状态
vim.g.airline_section_z = '%l/%L:%c'            -- 行号/总行数:列号


-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄



