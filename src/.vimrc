set number hls is
:set showcmd
:set showmatch
":set mouse=a
:set ruler

":vert term 

:set t_Co=256
"colorscheme molokai
"let g:molokai_original = 1
:set expandtab
:set tabstop=4
:set autoindent
:set ls=2
:set scrolloff=999
:set wildmenu

":set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"map  jj and kk to esc
:inoremap jj <Esc>:w<CR>
"map qx to esc and quit without saving
:map q <Nop>
:map qx <Esc>:q!<CR>
:map qq <Esc>:wq<CR>


syntax on
:set cursorline 
hi CursorLine ctermbg=DarkGray ctermfg=White
filetype on

:set wrap

:set termguicolors

"turns on detection, plugin and indent at once
filetype plugin indent on

:set ff=unix

:set ai

:set modeline
:set modelines=5

:set statusline+=%#warningmsg#
:set statusline+=%{SyntasticStatuslineFlag()}
:set statusline+=%*

" Highlight extra spaces
autocmd ColorScheme * hi ExtraWhitespace ctermbg=red guibg=red
hi ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" path to directory where library can be found
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

call plug#begin('~/.vim/plugged')

" Code completion
Plug 'raimondi/delimitmate'

" GUI Interface
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

" Languages
"Plug 'briancollins/vim-jst'
"Plug 'pangloss/vim-javascript'
Plug 'justinmk/vim-syntax-extra'
Plug 'scrooloose/syntastic'
"Plug 'Quramy/tsuquyomi'
Plug 'Superbil/llvm.vim'
"Plug 'xavierd/clang_complete'

Plug 'compnerd/arm64asm-vim'
Plug 'abhilb/puttum-kadalayum'

Plug 'tpope/vim-fugitive'
call plug#end()

:set background=dark
colorscheme elflord2
