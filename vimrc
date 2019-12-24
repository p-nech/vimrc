   set nocompatible             " be iMproved, required
   set hidden			" for editing multiple buffers
   set nobackup
   set nowritebackup
   filetype off                 " required
   call plug#begin('~/.vim/plugged')

   Plug 'sheerun/vim-polyglot'					     " Language pack for Vim
   Plug 'neoclide/coc.nvim', {'do': 'apt install --frozen-lockfile'} " IntelliSense (needs further tinkering with configs)
   Plug 'scrooloose/nerdtree'					     " Display files and folders
   Plug 'scrooloose/nerdcommenter'				     " For easier commenting
   Plug 'bling/vim-airline' 					     " Cool statusbar
   Plug 'terryma/vim-multiple-cursors'				     " Multiple cursors like in Sublime Text
   Plug 'tpope/vim-surround' 					     " Surround text object with parentheses, tags, etc.	
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy file search
   Plug 'junegunn/fzf.vim'
   
   call plug#end()
   
   " --------------------------------CONFIGS----------------------------- "
   let mapleader = ','

   autocmd FileType json syntax match Comment +\/\/.\+$+
   map <C-n> :NERDTreeToggle<CR>
				       
   "set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
   set mouse=a
   set ic
   set is
   map =+p <C-v> 
	
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

   "--------------------------AUTO CLOSING--------------------------------" 
   "inoremap (; (<CR>);<C-c>O
   "inoremap (, (<CR>),<C-c>O
   "inoremap {; {<CR>};<C-c>O
   "inoremap {, {<CR>},<C-c>O
   "inoremap [; [<CR>];<C-c>O
   "inoremap [, [<CR>],<C-c>O
