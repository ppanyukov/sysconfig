set nocompatible
source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" Customisations
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set nu		" To show line numbers on the left
"set guifont=LMMono8:h14:cANSI	" Latin Modern 12 @ 14pt, Western European set
"set guifont=LM_Mono_8:h10:cANSI	" Latin Modern Typewriter 12 @ 14pt, Western European set
set guifont=Consolas:h11,\Bitstream_Vera_Sans_Mono:h11:cANSI	" Latin Modern Typewriter 12 @ 14pt, Western European set
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


set spell


" LATEX-SUITE STUFF
" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on


" Compile latex files 
"map <F12> :call ShowLatex()<cr>
"map <F11> :call CompileLatex()<cr>

"function! ShowLatex()
  "exe "silent !start YAP.exe -1 -s " . line(".") . "%<.tex %<.DVI"
"endfunction


"function! CompileLatex()
  "silent ! latex --src-specials % 
"endfunction


" XML Tag completion, hit CTRL+_ to complete
" :au Filetype html,xml,xsl source $VIMRUNTIME/../vimfiles/scripts/closetag.vim 

" Windows explorer shortcuts
    map <c-w><c-f> :FirstExplorerWindow<cr>
    map <c-w><c-b> :BottomExplorerWindow<cr>
    map <c-w><c-t> :WMToggle<cr> 

" Background will be dark in terminal.
" Also set 256 colors, otherwise everything looks
" pretty bad in 88 in RXVT.
set t_Co=256
colorscheme desert
set background=dark

" Load the UTF-8 keyboard shortcuts for symbols
" :au BufEnter * source $HOME/vimfiles/scripts/utf8.vim
