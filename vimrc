   set nocompatible             " be iMproved, required
   set t_Co=256
   filetype off                 " required
   call plug#begin('~/.vim/plugged')

   Plug 'sheerun/vim-polyglot'					     " Language pack for Vim
   Plug 'neoclide/coc.nvim', {'do': 'apt install --frozen-lockfile'} " IntelliSense (needs further tinkering with configs)
   Plug 'scrooloose/nerdtree'					     " Display files and folders
   Plug 'scrooloose/nerdcommenter'				     " For easier commenting
   Plug 'bling/vim-airline' 					     " Cool statusbar
   Plug 'vim-airline/vim-airline-themes'
   Plug 'terryma/vim-multiple-cursors'				     " Multiple cursors like in Sublime Text
   Plug 'tpope/vim-surround' 					     " Surround text object with parentheses, tags, etc.	
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy file search
   Plug 'junegunn/fzf.vim'
   Plug 'gregsexton/matchtag'                                        " Почему-то не подсвечиваются теги, которые находятся на удалении друг от друга

   call plug#end()
   
   " --------------------------------CONFIGS----------------------------- "
   let mapleader = ','

   autocmd FileType json syntax match Comment +\/\/.\+$+
   map <C-n> :NERDTreeToggle<CR>
				       
   "set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
   set mouse=a
   set ic
   set is
   set hidden			" for editing multiple buffers
   set nobackup
   set nowritebackup
   set incsearch
	
   "---------------------------SMART CLIPBOARD----------------------------"
   vnoremap <Leader>y "+y
   vnoremap <Leader>y "+yy
   nnoremap <Leader>y "+yy
   vnoremap <Leader>d "+d
   nnoremap <Leader>d "+dd
   vnoremap <Leader>p "+p
   nnoremap <Leader>p "+p
   vnoremap <Leader>P "+P
   nnoremap <Leader>P "+P
   
   "-------------------------AUTO BRACKETS--------------------------------"
   
   inoremap " ""<left>
   inoremap ' ''<left>
   inoremap ( ()<left>
   inoremap [ []<left>
   inoremap { {}<left>
   inoremap {<CR> {<CR>}<ESC>O
   inoremap {;<CR> {<CR>};<ESC>O
