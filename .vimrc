syntax on
filetype plugin indent on
set guifont=Source\ Code\ Pro\ for\ Powerline:h11
set runtimepath+=/Users/jhall/.vim/vam
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=/Users/jhall/.vim/powerline/powerline/bindings/vim
set laststatus=2

set background=light
"set background=dark
execute pathogen#infect()
colorscheme peaksea
set encoding=utf-8
set cursorline
set showcmd
set fillchars+=stl:\ ,stlnc:\
set tabstop=2
set shiftwidth=2
set nu
set shortmess=atI
let g:rehash256 = 1
let g:vmail_flagged_color = "ctermfg=darkblue"
"let g:molokai_original = 1

" add gocode path to PATH env
let $PATH = '/Users/jhall/Source/go/bin:' . $PATH
let $GOPATH = '/Users/jhall/Source/go'


" add Go compiler support from .vim/bundle/go/compiler
autocmd FileType go compiler go
autocmd BufWritePre *.go Fmt
autocmd FileType go command! -buffer Gotest !go\ test 

autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufRead *.py nmap <F5> :!python %<CR>
