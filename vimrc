   set nocompatible             " be iMproved, required
   filetype off                 " required
   call plug#begin('~/.vim/plugged')

   Plug 'sheerun/vim-polyglot'
   Plug 'neoclide/coc.nvim', {'do': 'apt install --frozen-lockfile'}
   Plug 'scrooloose/nerdtree'
   Plug 'scrooloose/nerdcommenter'
   Plug 'bling/vim-airline' 
   Plug 'terryma/vim-multiple-cursors'

   call plug#end()
   
   " --------------------------------CONFIGS----------------------------- "
   let mapleader = ','

   autocmd FileType json syntax match Comment +\/\/.\+$+
   map <C-n> :NERDTreeToggle<CR>
				       
   " set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
   set mouse=a
   set ic
   set is
   map =+p <C-v> 
	
   "---------------------------SMART CLIPBOARD----------------------------"
   vnoremap <Leader>y "+y
   vnoremap <Leader>y "+yy
   vnoremap <Leader>d "+d
   nnoremap <Leader>d "+dd
   vnoremap <Leader>p "+p
   nnoremap <Leader>p "+p
   vnoremap <Leader>P "+P
   nnoremap <Leader>P "+P

