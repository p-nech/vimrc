   set nocompatible             " be iMproved, required
   filetype off                 " required
   call plug#begin('~/.vim/plugged')

   Plug 'sheerun/vim-polyglot'
   Plug 'neoclide/coc.nvim', {'do': 'apt install --frozen-lockfile'}
   Plug 'scrooloose/nerdtree'
   Plug 'scrooloose/nerdcommenter'

   call plug#end()

   " --------------------------------CONFIGS----------------------------- "
   autocmd FileType json syntax match Comment +\/\/.\+$+
   map <C-n> :NERDTreeToggle<CR>
				       
   " set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
   set mouse=a
   set ic
   set is
   map =+p <C-v> 
	
   "---------------------------SMART CLIPBOARD----------------------------"
   vnoremap ,y "+y
   vnoremap ,y "+yy
   vnoremap ,d "+d
   nnoremap ,d "+dd
   vnoremap ,p "+p
   nnoremap ,p "+p
   vnoremap ,P "+P
   nnoremap ,P "+P

