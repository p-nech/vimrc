   set nocompatible             " be iMproved, required
   filetype off                 " required
   call plug#begin('~/.vim/plugged')

   Plug 'sheerun/vim-polyglot'					     " Language pack for Vim
   Plug 'neoclide/coc.nvim', {'do': 'apt install --frozen-lockfile'} " IntelliSense (needs further tinkering with configs)
   Plug 'scrooloose/nerdtree'					     " Display files and folders
   Plug 'scrooloose/nerdcommenter'				     " For easier commenting
   Plug 'vim-airline/vim-airline' 				     " Cool statusbar
   Plug 'vim-airline/vim-airline-themes'
   Plug 'tpope/vim-surround' 					     " Surround text object with parentheses, tags, etc.	
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy file search
   Plug 'junegunn/fzf.vim'
   Plug 'gregsexton/matchtag'                                        " Почему-то не подсвечиваются теги, которые находятся на удалении друг от друга
   Plug 'tpope/vim-fugitive'
   Plug 'lyokha/vim-xkbswitch'
   call plug#end()
   
   " --------------------------------CONFIGS----------------------------- "
   let mapleader = ','

   autocmd FileType json syntax match Comment +\/\/.\+$+
   map <C-n> :NERDTreeToggle<CR>
   " change language
   inoremap <C-l> <C-^>
   let g:airline#extensions#tabline#enabled = 1
   let g:airline#extensions#xkblayout#enabled = 0 
   let g:XkbSwitchEnabled = 1
				       
   "set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
   set mouse=a
   set ic
   set is
   set hidden			" for editing multiple buffers
   set nobackup
   set nowritebackup
   set incsearch
   set t_Co=256                 " fix coloring
	
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

   " Autoindent XML
   nnoremap <leader>x ggVG:!xmllint --format -<cr>
   
   " Base64 encode and decode
   vnoremap <leader>64 y:enew<cr>i<c-r>=system('base64 --decode', @")<cr><esc>
   vnoremap <leader>e64 y:enew<cr>i<c-r>=system('base64', @")<cr><esc>

   "------------------------FOR SESSION SAVE-----------------------------"
   function! MakeSession()
     let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
     if (filewritable(b:sessiondir) != 2)
       exe 'silent !mkdir -p ' b:sessiondir
       redraw!
     endif
     let b:filename = b:sessiondir . '/session.vim'
     exe "mksession! " . b:filename
   endfunction
   
   function! LoadSession()
     let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
     let b:sessionfile = b:sessiondir . "/session.vim"
     if (filereadable(b:sessionfile))
       exe 'source ' b:sessionfile
     else
       echo "No session loaded."
     endif
   endfunction
   au VimEnter * nested :call LoadSession()
   au VimLeave * :call MakeSession()
