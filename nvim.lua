-- 设置行号
vim.wo.number = true

-- 语法高亮
vim.cmd('syntax on')

-- 设置缩进
vim.opt.tabstop = 4         -- 制表符宽度为 4
vim.opt.shiftwidth = 4      -- 自动缩进宽度为 4
vim.opt.expandtab = true     -- 将制表符转换为空格

-- 设置文件类型
vim.cmd('filetype plugin on')

-- 启用拼写检查
vim.opt.spell = true
vim.opt.spelllang = 'en_us'

-- 高亮显示当前行
vim.opt.cursorline = true

-- 配置命令补全
vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}

-- 允许使用系统剪贴板
vim.opt.clipboard = 'unnamedplus'

-- 设置状态行
vim.opt.laststatus = 2

-- 启用搜索高亮
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- 禁用换行
vim.opt.wrap = false

