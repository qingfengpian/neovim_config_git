

-- 清空常用寄存器
local function clear_registers()
  -- 清空 a-z 寄存器
  for r = string.byte('a'), string.byte('z') do
    vim.fn.setreg(string.char(r), "")
  end
  -- 清空无名寄存器
  vim.fn.setreg('"', "")
  -- 清空编号寄存器 0-9
  for i = 0, 9 do
    vim.fn.setreg(tostring(i), "")
  end
  -- 清空系统剪贴板寄存器
  vim.fn.setreg('+', "")
  vim.fn.setreg('*', "")
end
-- 定义一个命令 :Clsreg 来调用
vim.api.nvim_create_user_command("Clsreg", clear_registers, {})
-- 在Nvim命令模式中输入：Clsreg 来清空寄存器内容



-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄



-- 递归搜索项目文件
vim.opt.path:append("**") -- 开启递归搜索

-- 开启 Tab 补全文件名
vim.opt.wildmenu = true -- 开启命令行补全的可视化菜单
vim.opt.wildoptions = "pum" -- 关键点：使用 Popup Menu (弹出式菜单)
vim.opt.wildmode = "longest:full,full" -- 第一次 Tab 补全最长共同部分，第二次显示完整菜单

--  命令行补全忽略规则 (wildignore) 过滤不必要的文件
vim.opt.wildignore:append({
  "*.o", "*.obj", "*.class", "*.pyc", "*.swp",
  "*/node_modules/*","*/.git/*","*/target/*","*/.DS_Store","*/__pycache__/*",
  "*.exe", "*.dll","*.so", "*.dylib"
})

--[[
逐条说明
*.o / *.obj → 忽略 C/C++ 编译生成的目标文件（Linux/Unix 下是 .o，Windows 下是 .obj）。
*.class → 忽略 Java 编译生成的字节码文件。
*.pyc → 忽略 Python 编译生成的缓存文件。
*.swp → 忽略 Vim/Neovim 的交换文件。
*/node_modules/* → 忽略前端项目中的 node_modules 目录（通常非常庞大）。
*/.git/* → 忽略 Git 仓库的内部目录。
*/target/* → 忽略 Java/Maven 项目的构建输出目录。
*/.DS_Store → 忽略 macOS 系统自动生成的 .DS_Store 文件。
*/__pycache__/* → 忽略 Python 的缓存目录。
*.exe → 忽略 Windows 可执行文件。
*.dll → 忽略 Windows 动态链接库。
*.so → 忽略 Linux/Unix 下的共享库文件。
*.dylib → 忽略 macOS 下的动态库文件。

👉 最终效果：在命令行补全（比如 :e <Tab> 或 :find <Tab>）时，
这些文件和目录不会出现在候选列表里，让补全结果更简洁，专注于源代码文件。
]]



-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄



-- 定义函数：切换 listchars 显示
local function toggle_listchars()
  if vim.opt.list:get() then
    vim.opt.list = false
    print("listchars 已关闭")
  else
    vim.opt.list = true
    print("listchars 已开启")
  end
end

-- 创建用户命令 :Listc
vim.api.nvim_create_user_command("Listc", toggle_listchars, {})

vim.opt.listchars = {
  tab = '» ',         -- 每一个 Tab 显示为 »
  multispace = '· ',  -- 连续的空格显示点
  lead = '·',         -- 行首的缩进空格显示点
  trail = '×',        -- 行尾多余的空格显示 ×（提醒你删掉）
  eol = '↲',          -- 行尾显示回车符
}


--vim.opt.list = true  -- 用来控制是否显示 不可见的空白字符 开关
--vim.opt.showbreak = "↪ " -- 控制换行显示时，在折行的行首插入的符号
--vim.opt.breakindent = true  -- 控制是否自动换行

--vim.opt.listchars = {}  -- 定义显示规则
--[[
可用的 listchars 项目全集
键名	作用	示例符号
tab	🢂 Tab 字符的显示方式	»·
space	🢂 普通空格的显示方式	·
multispace	🢂 连续空格的显示方式	···
lead	🢂 行首缩进空格的显示方式	·
trail	🢂 行尾多余空格的显示方式	×
extends	🢂 行太长时右边溢出的标记	>
precedes	🢂 行太长时左边溢出的标记	<
eol	🢂 行尾换行符的显示方式	↲
nbsp	🢂 不间断空格 (non-breaking space) 的显示方式	+
]]

--vim.opt.fillchars = {}  -- 控制界面填充符号
--[[
可用的 fillchars 项目全集
键名	作用	示例符号
vert	🢂 垂直分隔线（窗口分割线）	│
fold	🢂 折叠区域的填充符号	·
foldopen	🢂 折叠展开时的标记	-
foldclose	🢂 折叠关闭时的标记	+
foldsep	🢂 折叠分隔符	`	`
diff	🢂 diff 模式下的填充符号	-
msgsep	🢂 消息分隔符	‾
eob	🢂 文件末尾的 ~ 符号	(空格)
]]




-- ❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄❄


















