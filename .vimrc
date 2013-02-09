" Custom vimrc file based on $VIMRUNTIME/vimrc_example.vim
" with additional modifitions. Invluded as a copy/paste here instead of
" sourcing to have full control over what we have.
"
"
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

"-------------------------------------------------------------------------------
" Custom stuff
"-------------------------------------------------------------------------------
" Set the runtime paths so that they can be used interchangeabley
" on both unix and windows. 
set runtimepath =$HOME/.vim,$HOME/vimfiles
set runtimepath+=$VIM/vimfiles
set runtimepath+=$VIMRUNTIME
set runtimepath+=$VIM/vimfiles/after
set runtimepath+=$HOME/.vim/after
set runtimepath+=$HOME/vimfiles/after

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " Show a vertical line at 80 chars to see easily when line will be long.
  autocmd FileType text setlocal colorcolumn=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"-------------------------------------------------------------------------------
" Customisations
"-------------------------------------------------------------------------------

" Expand tabs into spaces
set expandtab

" Tab size is 4
set tabstop=4
set shiftwidth=4

" To show line numbers on the left
set nu		

" Antialias the fonts
set antialias

"Get rid of annoying habit to leave ~ files behind
"see :h backup for info
set nobackup
set writebackup

" ignore case in searches
" but only do so if everything is entered in lowercase
set ignorecase
set smartcase


" Wrapping etc. These will make some kind of scrolling when nowrap is set
set linebreak
set sidescroll=5
set listchars+=precedes:<,extends:>
set wrap

" No spelling by default as usually result is ugly
set nospell


" XML Tag completion, hit CTRL+_ to complete
" :au Filetype html,xml,xsl source $VIMRUNTIME/../vimfiles/scripts/closetag.vim 

" Background will be light in terminal because we set it so.
" Also set 256 colors, otherwise everything looks
" pretty bad in 88 in RXVT.
set t_Co=256
" set background=light

" Always use UTF-8 encodings
set enc=utf-8

" File type detection
filetype plugin on
filetype indent on



"colorscheme zellner
"colorscheme morning
"colorscheme morning2


" A keymap to tell which syntax highlighting group is under cursor.
" Copied from
" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
nmap <F12> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" When lines wrap, we want the motions <j> and <k> behave like <gj> and <gk>
" so that we move down the wrapped line rather then jump to the next. This is
" how most other editors behave when dealing with wrapped lines.
nnoremap j gj
nnoremap k gk

" Some useful hacks picked up from http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Make vim show line numbers relative to the current line.
" Extremely useful for motions.
" This doesn't quite work very well, so disabling.
" set relativenumber

" Keep undo history even when closing the file.
" The following will create <FILENAME>.un~ whenever a file is edited.
" Not used for now but may be useful in the future?
" set undofile
" set undodir

" Use perl-like regex in searches without the need to escape every
" single character like groups etc. See :h \v for more info.
" nnoremap / /\v
" vnoremap / /\v

" Autoformatting options
" These mean:
"   - q: Allow formatting of comments with "gq".
"   - r: Automatically insert the current comment leader after hitting <Enter> in
"     Insert mode.
"   - n: Autoindent lists
"   - 1: Don't break lines after a one-letter word.
set formatoptions=qrn1

source ~/.vim/misc/PreviewMarkdown.vim
