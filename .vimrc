set nocompatible
source $VIMRUNTIME/vimrc_example.vim

" Customisations

" Expand tabs into spaces
set expandtab

" Tab size is 4
set tabstop=4
set shiftwidth=4

" See help for this one
set autoindent

" To show line numbers on the left
set nu		

" Antialias the fonts
set antialias

"Get rid of annoying habit to leave ~ files behind
"see :h backup for info
set nobackup
set writebackup

" ignore case in searches
set ignorecase

" Wrapping etc. These will make some kind of scrolling when nowrap is set
set linebreak
set sidescroll=5
set listchars+=precedes:<,extends:>
set wrap

" No spelling by default as usually result is ugly
set spell


" This makes vim invoke file-based plugins based on extensions?
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on


" XML Tag completion, hit CTRL+_ to complete
" :au Filetype html,xml,xsl source $VIMRUNTIME/../vimfiles/scripts/closetag.vim 

" Background will be dark in terminal.
" Also set 256 colors, otherwise everything looks
" pretty bad in 88 in RXVT.
set t_Co=256
set background=dark

