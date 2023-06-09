local vim=vim or {}
local opt=vim.opt
opt.rnu=true
opt.cursorcolumn=true
opt.hlsearch=true
opt.incsearch=true
opt.ignorecase=true
opt.filetype="on"
opt.termguicolors=true
opt.showmatch=true
opt.matchtime=1
opt.report=0
opt.eb=false
opt.paste=false
opt.showcmd=true
opt.showmode=true
opt.undofile=false
opt.swapfile=false
opt.softtabstop=4
opt.ts=4
opt.tabstop=4
opt.backspace="2"
opt.shiftwidth=4
opt.autoread=true
opt.scrolloff=3
opt.autowriteall=true
opt.syntax="on"
opt.ruler=true
opt.expandtab=true
opt.mouse="a"
opt.selection="exclusive"
opt.selectmode="mouse,key"
opt.history=1000
table.insert(opt.clipboard,"unnamed")
table.insert(opt.shortmess,"c")
opt.cmdheight=3
opt.fencs="utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936"
opt.termencoding="utf-8"
opt.fileencodings="ucs-bom,utf-8,cp936"
opt.fileencoding="utf-8"
opt.foldmethod="indent"
opt.foldlevelstart=99
require "conf.lazy"
require "conf.keymap"
