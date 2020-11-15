set nocompatible
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
"" Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
"" Plug 'ycm-core/YouCompleteMe'
"" Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'lyokha/vim-xkbswitch'
call plug#end()

"" Use molokai theme
colorscheme molokai

let g:XkbSwitchEnabled = 1
"" let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'

let g:XkbSwitchLib = '/usr/local/lib/libg3kbswitch.so'

"" Off bell sound
set noeb vb t_vb=

"" Change apperance of paren matching
hi MatchParen cterm=bold ctermbg=none ctermfg=red

set number

"" Bind F12 to open/close paste option
"" set pastetoggle=<F12>

"" Bind C-d to open/close shell
"" noremap <c-d> :sh<cr>

"" Bind F5 for running command make and get executable program
"" map <F5> :w<cr>:!make && ./$(basename `pwd`)<cr>

"" filetype indent on
autocmd FileType c,cpp setlocal et sta sw=4 sts=4 cino=g0
autocmd FileType c,cpp imap {<cr> {}<esc>i<cr><esc>O
autocmd FileType sh,python setlocal et sta sw=4 sts=4

"" Turn to the last open accurate postion
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"" If installed nerdtree, then auto run nerdtree after start vim
"" if filereadable($HOME."/.vim/plugged/nerdtree/plugin/NERD_tree.vim")
""	autocmd VimEnter * NERDTree

	"" When start vim then auto go to file editing buffer window
""	autocmd VimEnter * wincmd p

	"" NerdTree show hidden files
""	let NERDTreeShowHidden=1
"" endif

"" If the nerdtree buffer is the only buffer window then exit vim
"" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Close YCM function preview
"" if filereadable($HOME."/.vim/plugged/YouCompleteMe/autoload/youcompleteme.vim")
""	set completeopt=menu,menuone
""	let g:ycm_add_preview_to_completeopt=0
"" endif

"" Start with zz
autocmd VimEnter * normal zz

set clipboard^=unnamed,unnamedplus


set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
