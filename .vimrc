" COMODIDAD VISUAL

" Filetype plugins y sintaxis
filetype plugin on
filetype indent on
syntax on
set lbr " Linebreal
set ai    " autoindent
set si    " smartindent
set wrap

" Puramente visuales

set background=dark
set encoding=utf8

" Los tabs son tabs.
set tabstop=4
set shiftwidth=4
set noexpandtab

" Números y posición (en la esquinita)
set number
set ruler

" Status line
set laststatus=2
set statusline=%F%m%r%h%w\ \ CWD:\ %{getcwd()}\ \ \ \ \ \ \ \ Line:\ %l\ \ Column:\

" Show matching brackets when text indicator is over them
set showmatch

" Search options

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" COMODIDAD FUNCIONAL

" Mejor navegación
set whichwrap+=<,>,h,l

" Un menucillo extra para el autocompletar
set wildmenu

" Opciones para el menú de autocompletar, en el primer tab completa hasta el
" más largo y enseña el menú completo; en el siguiente tab completa con la
" siguiente alternativa
set wildmode=longest:full,full

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Actualización de archivos cuando se cambia el buffer desde un editor externo

" 1. Permite que lo lea
set autoread 

" 2. au(tocmd) [autocommand] que cuando Vim vuelva a ser el foco, ó cuando
" entras a un buffer, para cualquier archivo, silenciosamente e ignorando 
" errores, que ejecute checktime (revisar si ha cambiado, abreviatura e).
au FocusGained,BufEnter * :silent! checktime

" 3. Same thing, pero para cuando te sales y que se guarde solo.
au FocusLost,WinLeave * :silent! w


" Map leader para los key combinations que se enlistarán abajo.
let mapleader = " "

" Personalised key mapping

" Insertar líneas sin salir del modo normal
map <Enter> o<ESC>k
map <leader><Enter> O<ESC>j

" Fast saving
nmap <leader>w :w!<CR>
