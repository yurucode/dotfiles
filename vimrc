set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-grepper'
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

filetype plugin indent on

"set background=dark
colorscheme desert

map q: <Nop>
nnoremap Q <nop>

autocmd BufWritePre * StripWhitespace

set number

let g:vim_markdown_folding_disabled = 1

set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" Display all whitespace if list is turned on
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

set t_Co=256

let mapleader = ","

syntax on

" ----- scrooloose/nerdtree settings -----

nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" ----- majutsushi/tagbar settings -----

nmap <silent> <leader>b :TagbarToggle<CR>

" ----- SirVer/ultisnips settings -----

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsEditSplit="vertical"

" ----- vim-airline/vim-airline settings -----

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ----- airblade/vim-gitgutter settings -----

" Required after having changed the colorscheme
hi clear SignColumn

" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1
